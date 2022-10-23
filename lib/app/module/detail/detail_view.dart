import 'package:flutter/material.dart';
import 'package:travel_ui/app/module/detail/widgets/detail_body.dart';
import 'package:travel_ui/app/module/detail/widgets/detail_bottom_nav.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: const DetailBody(),
      bottomNavigationBar: DetailBottomNav(width: width),
    );
  }
}
