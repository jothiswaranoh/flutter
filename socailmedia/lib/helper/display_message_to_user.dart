
//display error to the user
import 'package:flutter/material.dart';

void DisplayMessageToUser(String message,BuildContext context){

  showDialog(context: context,
   builder: (context) =>AlertDialog(
    title: Text(message),
   )
   );

}
