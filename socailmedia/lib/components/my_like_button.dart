import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLikeButton extends StatelessWidget {
  bool isLiked;
  void Function()? onTap;
  String count;
  MyLikeButton({
    Key? key,
    required this.onTap,
    required this.isLiked,
    required this.count,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.grey,
          ),
          const SizedBox(width: 15,),
          Text(count,style: TextStyle(
            color: Colors.grey
          ),),
        ],
      ),
    );
  }
}
