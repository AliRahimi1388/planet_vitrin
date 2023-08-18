import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.icon,
    required this.message,
  });

  final String icon, message;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(message),
          action: SnackBarAction(
              label: 'گرفتم',
              onPressed: ScaffoldMessenger.of(context).hideCurrentSnackBar),
        ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
        padding: EdgeInsets.all(kDefaultPaddding / 2),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22),
              ),
              BoxShadow(
                  offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
            ]),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
