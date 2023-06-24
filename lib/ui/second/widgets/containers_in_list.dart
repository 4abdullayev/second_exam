import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class ContainerScreen extends StatelessWidget {

  const ContainerScreen({super.key,required this.photo,required this.coffeeType,required this.addition1,required this.addition2, required this.addition3});

  final photo;
  final String coffeeType;
  final String addition1;
  final String addition2;
  final String addition3;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width*(13/375),vertical: height*(4/812)),
        width: width*(142/375),
        height: height*(182/812),
        decoration: BoxDecoration(
          color: AppColors.C_ECE1CF,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(photo,width: width*(60/375),)),
            Text(coffeeType,
              style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(14/375),fontWeight: FontWeight.w700,fontFamily: "Poppins"),
            ),
            SizedBox(height: height*(5/812),),
            Text(addition1,
              style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(14/375),fontFamily: "Poppins"),
            ),
            Text(addition2,
              style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(14/375),fontFamily: "Poppins"),
            ),
            Text(addition3,
              style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(14/375),fontFamily: "Poppins"),
            ),
          ],
        ),
    );
  }
}