import 'package:flutter/material.dart';
import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/home/components/header_with_searchbox.dart';
import 'package:planet_app/screens/home/components/title_with_more_btn.dart';

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  company: "Iran",
                  press: () {},
                  price: 443,
                ),
                RecomendPlantCard(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  company: "Iran",
                  press: () {},
                  price: 443,
                ),
                RecomendPlantCard(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  company: "Iran",
                  press: () {},
                  price: 443,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.company,
    required this.price,
    required this.press,
  });

  final String image, title, company;

  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPaddding,
          top: kDefaultPaddding / 2,
          bottom: kDefaultPaddding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ],
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.labelLarge),
                      TextSpan(
                          text: "$company".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ],
                  )),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
