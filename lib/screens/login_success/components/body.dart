import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenHeight(50), width: double.infinity,),        
        Image.asset(
          "assets/images/redbus.png",
          height: SizeConfig.screenHeight*0.25,//40%
          width: double.infinity,
        ),
        /*SizedBox(height: SizeConfig.screenHeight * 0.008),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            //fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),*/
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Book a bus",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
        SizedBox(height: getProportionateScreenHeight(50)),
        Image.asset(
          "assets/images/truck1.png",
          height: SizeConfig.screenHeight * 0.25, //40%
        ),
        /*SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),*/
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Logistics",
            press: () {
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
