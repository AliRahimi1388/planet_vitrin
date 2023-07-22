import 'package:flutter/material.dart';
import 'package:planet_app/screens/home/components/title_with_custom_underline.dart';
import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(
            text: title,
          ),
          Spacer(),
          TextButton(
            onPressed: press,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: kPrimaryColor,
                padding: EdgeInsets.all(0)),
          )
        ],
      ),
    );
  }
}
