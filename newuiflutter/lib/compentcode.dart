// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //variables -stores any thing in the variables
  // List names = ["jothis", "arun", "vasasth"];
  void userTapped() {
    print("userTapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.deepPurple[200],
        // appBar: AppBar(
        //   title: Text("My App Bar"),
        //   backgroundColor: Colors.deepPurple,
        //   elevation: 0,//used to stop the app bar shadows
        //   leading: Icon(Icons.menu),//add menu in left
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.logout),
        //       onPressed: () {
        //         // Add your logout functionality here
        //       },
        //     ),
        //   ],
        // ),
        // body: Center(
        //   child: Container(
        //     height:  300,
        //     width: 300,
        //     padding: EdgeInsets.all(25),
        //     decoration: BoxDecoration(
        //       color: Colors.deepPurple,
        //       borderRadius: BorderRadius.circular(30),
        //     ),
        //     // padding: EdgeInsets.symmetric(horizontal: 25,vertical: 35),
        //     // padding: EdgeInsets.onlt(left: 0,right:0,bottom:0,top:0),
        //     // padding: EdgeInsets.symmetric(horizontal: 25,vertical: 35),
        //     // child: Text("Jothiswaran",
        //     // style: TextStyle(
        //     //   color: Colors.white,
        //     //   fontSize: 28,
        //     //   fontWeight: FontWeight.bold,
        //     // ),),
        //     child:Icon(
        //       Icons.favorite,
        //       color: Colors.white,
        //       size: 64,
        //       )
        //   ),
        // ),
        // body: Column(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // mainAxisAlignment: MainAxisAlignment.end ,
        //   // mainAxisAlignment: MainAxisAlignment.spaceAround ,
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        //   crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     // Container(height: 200, width: 200, color: Colors.deepPurple,),
        //     // Container(height: 200, width: 200, color: Colors.deepPurple[400],),
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple,
        //       ),
        //     ),
        //     Expanded(
        //       // flex: 1,
        //       flex:2,//double times of the container
        //       child: Container(
        //         color: Colors.deepPurple[400],
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple[200],
        //       ),
        //     )
        //     // if we put 3 in expanded it automatically share the container
        //     //expanded wigeth full up the wigeth automatically
        //   ],
        // ),
        //column is not scrollable list view is scrollable
        // body: ListView(
        //   // scrollDirection: Axis.horizontal,
        //   scrollDirection: Axis.vertical,

        //   children: [
        //     Container(height: 350,color: Colors.deepPurple,),
        //     Container(height: 350,color: Colors.deepPurple[400],),
        //     Container(height: 350,color: Colors.deepPurple[200],),
        //   ],
        // ),
        // //row is the form of row
        //   body: Row(
        //   children: [
        //     Container(height: 350,color: Colors.deepPurple,),
        //     Container(height: 350,color: Colors.deepPurple[400],),
        //     Container(height: 350,color: Colors.deepPurple[200],),
        //   ],
        // ),
        //         // //row is the form of row
        //   body: ListView.builder(
        //     itemCount: names.length,
        //     itemBuilder: (context, index) => ListTile(
        //       title: Text(names[index]),
        //     )
        // ),
        //gird is like a chess box
        // body:GridView.builder(
        //   itemCount: 64,
        //   gridDelegate:
        //   //it how many we want in a row
        //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        //   itemBuilder:(context, index) =>  Container(
        //     color:Colors.deepPurple,
        //     margin:EdgeInsets.all(2)
        //     ),
        //   ),
        //     body: Stack(
        //       alignment: Alignment.center,
        //       //it fox the container one mela onu
        //   children: [
        //     //bigbox
        //     Container(
        //       height:300,
        //       width: 300,
        //       color: Colors.deepPurple[300],
        //     ),
        //     //medoum
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepPurple[200],
        //     ),
        //     //smallbox
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.deepPurple[100],
        //     ),
        //   ],
        // )
        body: Center(
          child: GestureDetector(
            onTap: () {
              //do something
              userTapped();
            },
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: Text("tap me")),
            ),
          ),
        ),
      ),
    );
  }
}
