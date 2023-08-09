import 'package:flutter/material.dart';
import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/home/components/header_with_searchbox.dart';
import 'package:planet_app/screens/home/components/title_with_more_btn.dart';

import 'featured_plants.dart';
import 'recomends_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPaddding,
          )
        ],
      ),
    );
  }
}

