import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen(
      {super.key,
      required this.title,
      required this.text,
      required this.keyType});

  final keyType;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * (31 / 375)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.C_464646),
              )
            ],
          ),
          SizedBox(
            height: height * (7 / 812),
          ),
          Container(
            height: height * (25 / 812),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              cursorWidth: 1,
              cursorHeight: 22,
              cursorColor: AppColors.black.withOpacity(0.2),
              keyboardType: keyType,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColors.C_674D3F,
                      fontFamily: "Poppins"),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: width * (1 / 375), color: AppColors.C_DEE1EF)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: width * (1 / 375), color: AppColors.C_DEE1EF),
                  )),
            ),
          ),
          SizedBox(
            height: height * (38 / 812),
          ),
        ],
      ),
    );
  }
}
