import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPostButton extends StatelessWidget {
  final void Function()? onTap;
  MyPostButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(left: 10),
        child: Center(
          child: Icon(Icons.done,
          color:Theme.of(context).colorScheme.primary,
          ),
          ),
      ),
    );
  }
}
