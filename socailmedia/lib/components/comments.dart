import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String text;
  final String user;
  final String time;

  const Comment({
    Key? key,
    required this.text,
    required this.user,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Comment text
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          ),
          const SizedBox(height: 5),

          // User and time
          Row(
            children: [
              Text(
                user,
                style: TextStyle(color: Colors.grey[400]),
              ),
              const SizedBox(width: 5),
              Text(
                "•",
                style: TextStyle(color: Colors.grey[400]),
              ),
              const SizedBox(width: 5),
              Text(
                time,
                style: TextStyle(color: Colors.grey[400]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
