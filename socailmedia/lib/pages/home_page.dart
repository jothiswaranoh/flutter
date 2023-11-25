import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socailmedia/components/my_drawer.dart';
import 'package:socailmedia/components/my_list_tile.dart';
import 'package:socailmedia/components/my_post_button.dart';
import 'package:socailmedia/components/my_textfield.dart';
import 'package:socailmedia/model/firestore.dart';
import 'package:socailmedia/controller/comman.dart';
import '../model/tab_icon_data.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  AnimationController? animationController;

  final FirebaseDatabase database = FirebaseDatabase();

  final TextEditingController newPostController = TextEditingController();

  void PostMessage() {
    postMessage(newPostController);
  }

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("W A L L"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: MyTextfield(
                    hintText: "Say something",
                    obscureText: false,
                    controller: newPostController,
                  ),
                ),
                MyPostButton(onTap: PostMessage),
              ],
            ),
          ),
          StreamBuilder(
            stream: database.getPostsStream(),
            builder: ((context, snapshot) {
              // Show loading circle
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              // Get all posts
              final posts = snapshot.data!.docs;
              // No data?
              if (snapshot.data == null || posts.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text("No posts. Post something!"),
                  ),
                );
              }
              // Return a list of posts
              return Expanded(
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    String message = post['PostMessage'];
                    String userEmail = post['UserEmail'];
                    return My_List_tile(title: message, subtitle: userEmail);
                  },
                ),
              );
            }),
          ),// Call the bottomBar function here
        ],
      ),
    );
  }

 }
