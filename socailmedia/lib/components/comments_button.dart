import 'package:flutter/material.dart';

class CommentButton extends StatelessWidget {
  final void Function()? onTap;
  final String count;

  const CommentButton({Key? key, required this.onTap, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const Icon(
            Icons.comment,
            color: Colors.grey,
          ),
          Text(
            count,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
