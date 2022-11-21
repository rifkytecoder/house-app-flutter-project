import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Home Page',
        style: blackTextStyle,
      ),
    );
  }
}
