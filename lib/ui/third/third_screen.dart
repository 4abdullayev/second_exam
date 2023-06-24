import 'package:flutter/material.dart';
import 'package:second_exam/ui/first/widgets/login_buttons.dart';
import 'package:second_exam/ui/third/widgets/text_field.dart';
import 'package:second_exam/utils/colors.dart';
import '../../utils/images.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(AppImages.second_back),
                  Container(
                    margin: EdgeInsets.only(left: width*(29/375),top: height*(20/812)),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {},icon: Image.asset(AppImages.settings,width: width*(31/375),),),
                        SizedBox(width: width*(221/375),),
                        Image.asset(AppImages.john,width: width*(44/375),)
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: width*(200/375),bottom: height*(24/812)),
                child: Text("Profile",
                  style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(32/375),fontWeight: FontWeight.w700,fontFamily: "Poppins"),),
              ),
              Row(
                children: [
                  SizedBox(width: width*(39/375),),
                  Image.asset(AppImages.john,width: width*(81/375),),
                  SizedBox(width: width*(24/375),),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jackie John",
                        style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(24/375),fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
                      Text("Online",
                        style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(20/375),fontFamily: "Poppins"),)
                    ],
                  )
                ],
              ),
              SizedBox(height: height*(20/812),),
              TextFieldScreen(title: 'Username', text: 'juackie_johkn', keyType: TextInputType.text,),
              TextFieldScreen(title: 'First name', text: 'juackie', keyType: TextInputType.text,),
              TextFieldScreen(title: 'Last name', text: 'johkn', keyType: TextInputType.text,),
              TextFieldScreen(title: 'Date of birth', text: '25 march 2001', keyType: TextInputType.text,),
              SizedBox(height: height*(30/812),),
              ButtonScreen(text: "Sign out"),
              SizedBox(height: height*(21/812),),
            ],
          ),
        ),
      ),
    );
  }
}
