import 'package:flutter/material.dart';

import '../../../constants.dart';

class ButtomBuyCommentBar extends StatelessWidget {
  const ButtomBuyCommentBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
              onPressed: () {},
              child: Text("Buy", style: TextStyle(fontSize: 17)),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kPrimaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20)),
                          side: BorderSide(color: kPrimaryColor))))),
        ),
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
              onPressed: () {},
              child: Text("Comments", style: TextStyle(fontSize: 17)),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20)),
                          side: BorderSide(color: kPrimaryColor))))),
        )
      ],
    );
  }
}
