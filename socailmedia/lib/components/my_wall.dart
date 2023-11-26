import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socailmedia/components/my_like_button.dart';
import 'package:socailmedia/components/space.dart';
import 'package:socailmedia/controller/comman.dart';

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
  final current_user = getCurrentUser();
  bool isLiked = false;
  @override
  void initState() {
    super.initState();
    isLiked = widget.likes.contains(current_user!.email);
  }

  void toggleLiked() {
    setState(() {
      isLiked = !isLiked;
    });
    DocumentReference postRef =
        FirebaseFirestore.instance.collection('posts').doc(widget.postId);

    if (isLiked) {
      postRef.update({
        'Likes': FieldValue.arrayUnion([current_user!.email]),
      }).catchError((error) {
        print("Error liking post: $error");
      });
    } else {
      postRef.update({
        'Likes': FieldValue.arrayRemove([current_user!.email]),
      }).catchError((error) {
        print("Error unliking post: $error");
      });
    }
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
        child: ListTile(
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
        ),
      ),
    );
  }
}
