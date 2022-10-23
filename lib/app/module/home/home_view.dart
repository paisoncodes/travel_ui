import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';
import 'package:travel_ui/app/module/home/widgets/home_body.dart';
import 'package:travel_ui/app/module/home/widgets/home_bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: HomeBody(width: width),
      bottomNavigationBar: HomeBottomNav(width: width),
    );
  }
}
