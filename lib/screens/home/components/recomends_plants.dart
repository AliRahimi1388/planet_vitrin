import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../details/details_screen.dart';



class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            company: "Iran",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
            },
            price: 443,
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Samantha",
            company: "Iran",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
            },
            price: 443,
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            company: "Iran",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
            },
            price: 443,
          ),
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
