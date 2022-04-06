import 'package:e_commerce/utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:e_commerce/widgets/icon_and_text_widget.dart';

class FoodPageBody extends StatelessWidget {
  FoodPageBody({Key? key}) : super(key: key);
  PageController PageCont = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: PageView.builder(
            controller: PageCont,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }));
  }

  Widget _buildPageItem(int position) {
    return Stack(
      children: [
        Container(
          height: 200,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF69c5df),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/food1.png",
              ),
            ),
          ),
          //  child: Image.asset('assets/images/food1.png', fit: BoxFit.fill,)
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 110,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              //  child: Image.asset('assets/images/food1.png', fit: BoxFit.fill,)
              child: Container(
                padding: EdgeInsets.only(top: 10, right: 16, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'Chineese side'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(Icons.star,
                                  color: AppColors.mainColor, size: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(width: 10),
                        SmallText(text: '1287'),
                        SizedBox(width: 10),
                        SmallText(
                          text: 'comments',
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconAndTextWidget(
                          icon: Icons.circle,
                          text: 'Normal',
                          iconColor: AppColors.iconColor1,
                        ),
                        IconAndTextWidget(
                          icon: Icons.location_on,
                          text: '1.7km',
                          iconColor: AppColors.mainColor,
                        ),
                        IconAndTextWidget(
                          icon: Icons.access_time_rounded,
                          text: '32min',
                          iconColor: AppColors.iconColor1,
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
