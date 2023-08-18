import 'package:flutter/material.dart';
import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/details/components/title_and_price.dart';
import 'images_and_icons.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImagesAndIcons(size: size),
          TitleAndPrice(
            title: "Angelica\n",
            country: "Russia",
            price: 440,
          ),
          SizedBox(
            height: kDefaultPaddding,
          ),
        ],
      ),
    );
  }
}