import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socailmedia/components/comments.dart';
import 'package:socailmedia/components/my_like_button.dart';
import 'package:socailmedia/components/space.dart';
import 'package:socailmedia/controller/comman.dart';
import 'package:socailmedia/helper/display_message_to_user.dart';
import 'package:socailmedia/helper/firebase_helper.dart';


import 'comments_button.dart';

class MyWall extends StatefulWidget {
  final String title;
  final String subtitle;
  final String postId;
  final List<String> likes;
  final int count = 0;

  MyWall({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.likes,
    required this.postId,
  }) : super(key: key);
  @override
  State<MyWall> createState() => _MyWallState();
}

class _MyWallState extends State<MyWall> {
  final _commentTextController = TextEditingController();
  final currentUser = getCurrentUser();
  bool isLiked = false;
  @override
  void initState() {
    super.initState();
    isLiked = widget.likes.contains(currentUser!.email);
  }

  void toggleLiked() {
    setState(() {
      isLiked = !isLiked;
    });

    DocumentReference postRef =
        FirebaseFirestore.instance.collection('posts').doc(widget.postId);

    if (isLiked) {
      postRef.update({
        'Likes': FieldValue.arrayUnion([currentUser!.email]),
      }).catchError((error) {
        print("Error liking post: $error");
      });
    } else {
      postRef.update({
        'Likes': FieldValue.arrayRemove([currentUser!.email]),
      }).catchError((error) {
        print("Error unliking post: $error");
      });
    }
  }

  void addComment(String commentText) {
    FirebaseFirestore.instance
        .collection("posts")
        .doc(widget.postId)
        .collection("Comments")
        .add({
      "CommentText": commentText,
      "CommentedBy": currentUser!.email,
      "CommentTime": Timestamp.now(), // Remember to format this when displaying
    });
  }

void showCommentDialog() {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Add Comment"),
      content: TextField(
        controller: _commentTextController,
        decoration: InputDecoration(
          hintText: "Write a comment...",
        ),
      ),
      actions: [
        // Post button
        TextButton(
          onPressed: () {
            addComment(_commentTextController.text);
            Navigator.pop(context);
            _commentTextController.clear();
          },
          child: Text("Post", style: TextStyle(color: Colors.white)),
        ),
        // Cancel button
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            _commentTextController.clear();
          },
          child: Text("Cancel", style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );
}
 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: MyLikeButton(
                isLiked: isLiked,
                onTap: toggleLiked,
                count: widget.likes.length.toString(),
              ),
              title: Text(widget.title),
              subtitle: Text(
                widget.subtitle,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              trailing: CommentButton(
                onTap: showCommentDialog,
                count:"4",
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("posts")
                  .doc(widget.postId)
                  .collection("Comments")
                  .orderBy("CommentTime", descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                }

                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return Center(
                    child: Text("No comments yet."),
                  );
                }

                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: snapshot.data!.docs.map((doc) {
                    final commentData = doc.data() as Map<String, dynamic>;

                    return Comment(
                      text: commentData["CommentText"],
                      user: (commentData["CommentedBy"]),
                      time: formatData(commentData["CommentTime"]),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
