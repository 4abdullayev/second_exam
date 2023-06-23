import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../utils/colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width*(31/375)),
      child: ZoomTapAnimation(
        child: Container(
          height: height*(27/812),
          width: width*(87/375),
          decoration: BoxDecoration(
            color: AppColors.C_674D3F,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(child: Text("Order",style: TextStyle(color: AppColors.C_FFF9F2,fontSize: width*(16/375),fontFamily: "Poppins")),),
        ),
      )
    );
  }
}