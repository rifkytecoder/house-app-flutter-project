import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/models/space_model.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  final SpaceModel space;

  const SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            height: 110,
            width: 130,
            child: Stack(
              children: [
                Image.asset('assets/space_room_image.png'),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(18))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/star_icon.png',
                          height: 18,
                          width: 18,
                        ),
                        Text(
                          // '4/5',
                          '${space.rating}/5',
                          style: whiteTextStyle.copyWith(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // 'Green Kawanua',
              space.name,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text.rich(
              TextSpan(
                text: '\$${space.price}',
                style: purpleTextStyle.copyWith(fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                      text: '/ Month',
                      style: greyTextStyle.copyWith(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              // 'Lapangan, Paniki',
              '${space.city}, ${space.country}',
              style: greyTextStyle,
            )
          ],
        )
      ],
    );
  }
}
