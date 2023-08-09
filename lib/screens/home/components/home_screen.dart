import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/home/components/body.dart'; 
import 'my_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}
