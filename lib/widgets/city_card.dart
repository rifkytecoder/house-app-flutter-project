import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/models/city_model.dart';
import 'package:flutter_project_house_app/theme.dart';

class CityCard extends StatelessWidget {
  // todo obj City Model
  final CityModel city;
  const CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        // color: const Color(0xffF6F7F8), // color container
        color: Colors.amber, // color container testing
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  // 'assets/city_image.png',
                  city.imageUrl,
                  height: 102,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                // todo label star popular
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(18))),
                          child: Center(
                              child: Image.asset(
                            'assets/star_icon.png',
                            height: 22,
                            width: 22,
                          )),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(height: 11),
            Text(
              // 'Manado',
              city.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
