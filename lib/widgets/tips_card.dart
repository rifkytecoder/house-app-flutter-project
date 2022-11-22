import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/theme.dart';

import '../models/tips_model.dart';

class TipsCard extends StatelessWidget {
  final TipsModel tips;
  const TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          // 'assets/tips_icon.png',
          tips.imageUrl,
          width: 80,
          height: 80,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // 'City Guidelines',
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              // 'Updated 28 April',
              'Update ${tips.updateAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: greyColor,
            ))
      ],
    );
  }
}
