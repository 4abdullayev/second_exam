import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_exam/ui/first/widgets/login_buttons.dart';
import 'package:second_exam/utils/colors.dart';
import 'package:second_exam/utils/images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.C_674D3F,
          ),
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(AppImages.first_back),
                Container(
                  margin: EdgeInsets.only(left: width*(45/375),top: height*(56/812)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Grab a cup of",
                          style: TextStyle(color: AppColors.C_EDE0D4,fontSize: width*(28/375),fontWeight: FontWeight.w700,fontFamily: "Poppins"),),
                          Text("coffee",
                            style: TextStyle(color: AppColors.C_E7BC91,fontSize: width*(64/375),fontWeight: FontWeight.w700,fontFamily: "Poppins"),)
                        ],
                      ),
                      Image.asset(AppImages.coffee,width: width*(108/375),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: height*(30/812),),
            Image.asset(AppImages.choco,width: width*(61/375),),
            SizedBox(height: height*(15/812),),
            ButtonScreen(text: "Log in"),
            SizedBox(height: height*(72/812),),
            Text("Don’t have an account?",
              style: TextStyle(color: AppColors.C_464646,fontSize: width*(13/375),fontFamily: "Poppins"),),
            SizedBox(height: height*(6/812),),
            ButtonScreen(text: "Sign in"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width*(30/375),vertical: height*(14/812)),
              child: Row(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      width: width*(150/375),
                      height: height*(55/812),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.C_BE9173,width: width*(1/375)),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child:Center(
                        child: Image.asset(AppImages.gooole,width: width*(20/375),)
                      ),
                    ),
                  ),
                  SizedBox(width: width*(15/375),),
                  ZoomTapAnimation(
                    child: Container(
                      width: width*(150/375),
                      height: height*(55/812),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.C_BE9173,width: width*(1/375)),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child:Center(
                          child: Image.asset(AppImages.facebook,width: width*(20/375),)
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}