import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:e_commerce/home/food_page_body.dart';
import "package:flutter/material.dart";
import "package:e_commerce/utiles/colors.dart";

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Container(
                  margin: EdgeInsets.only(top: 45, bottom: 15),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(
                            text: 'Egypt',
                            color: AppColors.mainColor,
                            size: 30,
                          ),
                          Row(
                            children: [
                              SmallText(text: 'Menouf'),
                              Icon(Icons.arrow_drop_down_outlined)
                            ],
                          )
                        ],
                      ),
                      Center(
                          child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(Icons.search, color: Colors.white),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.mainColor),
                      ))
                    ],
                  ))),
          FoodPageBody(),
        ],
      ),
    );
  }
}
