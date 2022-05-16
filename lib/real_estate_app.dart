import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/real_estate_home_page.dart';
import 'package:real_estate_app/ui/real_estate_home_page.dart';

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RealEstateHomePage(),
    );
  }
}
