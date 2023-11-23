import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socailmedia/components/my_back_button.dart';
import 'package:socailmedia/components/space.dart';
import 'package:socailmedia/controller/comman.dart';
import 'package:socailmedia/model/firestore.dart';

import '../components/my_list_tile.dart';

class ProfilePage extends StatelessWidget {
  final FirebaseDatabase database = FirebaseDatabase();
  User? currentUser = getCurrentUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: getuserdetails(currentUser!),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else if (snapshot.hasData) {
            return buildUserProfile(context, snapshot.data!.data());
          } else {
            return Text("No data received");
          }
        },
      ),
    );
  }

  Widget buildUserProfile(BuildContext context, Map<String, dynamic>? user) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 12,
              ),
              child: Row(
                children: [
                  MyBackButton(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.all(25),
              child: const Icon(
                Icons.person,
                size: 64,
              ),
            ),
            Space(
              inputHeight: 25,
            ),
            Text(
              user?['username'] ?? 'Username not available',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Space(
              inputHeight: 25,
            ),
            Text(
              user?['email'] ?? 'Email not available',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
   ],
        ),
      ),
    );
  }

  Widget buildPostList(List<QueryDocumentSnapshot> posts) {
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          String message = post['PostMessage'];
          String userEmail = post['UserEmail'];
          return My_List_tile(
            title: message,
            subtitle: userEmail,
          );
        },
      ),
    );
  }
}
