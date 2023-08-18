import 'package:flutter/material.dart';
import 'package:planet_app/screens/details/components/body.dart';

import '../home/components/my_bottom_navbar.dart';
import 'components/buttom_buy_comment_bar.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: ButtomBuyCommentBar()
    );
  }
}
