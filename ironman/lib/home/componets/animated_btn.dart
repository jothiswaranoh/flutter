import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AnimatedBtn extends StatelessWidget {
  const AnimatedBtn({
    Key? key,
    required RiveAnimationController btnAnimationController,
    required this.press,
  })  : _btnAnimationController = btnAnimationController,
        super(key: key);

  final RiveAnimationController _btnAnimationController;
  final VoidCallback press;

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: press,
    child: SizedBox(
      height: 64,
      width: 10000,
      child: Stack(
        children: [
          RiveAnimation.asset(
            "assets/RiveAssets/button.riv",
            controllers: [_btnAnimationController],
          ),
          Positioned.fill(
            child: Container(
              color: Colors.red, // Set the background color to red
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.white, // Set the icon color to white
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Lets start the game",
                      style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400, // Set the text color to white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

}
