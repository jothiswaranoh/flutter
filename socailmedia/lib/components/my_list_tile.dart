import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socailmedia/components/my_like_button.dart';

import '../controller/comman.dart';

class My_List_tile extends StatefulWidget {
  final String title;
  final String subtitle;
  My_List_tile({super.key, required this.title, required this.subtitle});

  @override
  State<My_List_tile> createState() => _My_List_tileState();
}

class _My_List_tileState extends State<My_List_tile> {
  final current_user=getCurrentUser();

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
    ;
  }
}
