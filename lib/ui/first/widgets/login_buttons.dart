import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../utils/colors.dart';

class ButtonScreen extends StatelessWidget {

  const ButtonScreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.symmetric(horizontal: width*(31/375)),
      child: ZoomTapAnimation(
        child: Container(
          width: width*(314/375),
          height: height*(55/812),
          decoration: BoxDecoration(
              color: AppColors.C_BE9173,
              borderRadius: BorderRadius.circular(30)
          ),
          child:Center(
            child: Text(text,
              style: TextStyle(color: AppColors.white,fontSize: width*(16/375),fontWeight: FontWeight.w700,fontFamily: "Poppins"),
            ),
          ),
        ),
      ),
    );
  }
}