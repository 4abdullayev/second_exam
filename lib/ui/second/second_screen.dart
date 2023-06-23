import 'package:flutter/material.dart';
import 'package:second_exam/ui/second/widgets/containers_in_list.dart';
import 'package:second_exam/ui/second/widgets/order_button.dart';
import 'package:second_exam/utils/images.dart';
import '../../utils/colors.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
        body: Column(
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
              margin: EdgeInsets.only(right: width*(188/375),),
              child: Text("Hot Coffee",
                style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(20/375),fontWeight: FontWeight.w700,fontFamily: "Poppins"),),
            ),
            SizedBox(height: height*(9/812),),
            SizedBox(
              height: height*(217/812),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: width*(20/375),),
                    Column(
                      children: [
                        ContainerScreen(photo: AppImages.hot_latte, coffeeType: "Latte", addition1: " espresso",addition2: " steamed milk",addition3: "",),
                        SizedBox(height: height*(7/812),),
                        OrderScreen(),
                      ],
                    ),
                    SizedBox(width: width*(20/375),),
                    Column(
                      children: [
                        ContainerScreen(photo: AppImages.hot_mocha, coffeeType: "Mocha", addition1: " espresso", addition2: " steamed milk", addition3: " chocolate"),
                        SizedBox(height: height*(7/812),),
                        OrderScreen(),
                      ],
                    ),
                    SizedBox(width: width*(20/375),),
                    Column(
                      children: [
                        ContainerScreen(photo: AppImages.hot_mocha, coffeeType: "Mocha", addition1: " espresso", addition2: " steamed milk", addition3: " chocolate"),
                        SizedBox(height: height*(7/812),),
                        OrderScreen(),
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(height: height*(23/812),),
            Container(
              margin: EdgeInsets.only(right: width*(188/375),),
              child: Text("Cold Coffee",
                style: TextStyle(color: AppColors.C_674D3F,fontSize: width*(20/375),fontWeight: FontWeight.w700,fontFamily: "Poppins"),),
            ),
            SizedBox(height: height*(9/812),),
            SizedBox(
                height: height*(217/812),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: width*(20/375),),
                    Column(
                      children: [
                        ContainerScreen(photo: AppImages.cold_latte, coffeeType: "Latte", addition1: " espresso", addition2: " steamed milk", addition3: ""),
                        SizedBox(height: height*(7/812),),
                        OrderScreen(),
                      ],
                    ),
                    SizedBox(width: width*(20/375),),
                    Column(
                      children: [
                        ContainerScreen(photo: AppImages.cold_mocha, coffeeType: "Mocha", addition1: " espresso", addition2: " steamed milk", addition3: " chocolate"),
                        SizedBox(height: height*(7/812),),
                        OrderScreen(),
                      ],
                    ),
                    SizedBox(width: width*(20/375),),
                    Column(
                      children: [
                        ContainerScreen(photo: AppImages.cold_mocha, coffeeType: "Mocha", addition1: " espresso", addition2: " steamed milk", addition3: " chocolate"),
                        SizedBox(height: height*(7/812),),
                        OrderScreen(),
                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: height*(69/812),
          margin: EdgeInsets.symmetric(horizontal: width*(42/375)),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 10,
                blurRadius: 30,
                color: Colors.grey.shade300
              )
            ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Image.asset(AppImages.home,width: width*(31/375),),label: "",),
                BottomNavigationBarItem(icon: Image.asset(AppImages.beans,width: width*(31/375),),label: ""),
                BottomNavigationBarItem(icon: Image.asset(AppImages.person,width: width*(31/375),),label: ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}