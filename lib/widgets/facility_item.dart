import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  const FacilityItem({
    required this.name,
    required this.imageUrl,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.asset('assets/kitchen_icon.png', width: 32),
        Image.asset(imageUrl, width: 32),
        const SizedBox(height: 8),
        Text.rich(TextSpan(
            // text: '2',
            text: '$total',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                // text: ' Kitchen',
                text: ' $name',
                style: greyTextStyle.copyWith(fontSize: 14),
              )
            ]))
      ],
    );
  }
}
