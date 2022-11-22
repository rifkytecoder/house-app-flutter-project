import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/models/city_model.dart';
import 'package:flutter_project_house_app/theme.dart';
import 'package:flutter_project_house_app/widgets/city_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: edge),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari rumah idaman',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular City',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            // todo Card City
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // card item
                  SizedBox(width: edge),
                  CityCard(
                    CityModel(
                        id: 1,
                        imageUrl: 'assets/city_image.png',
                        name: 'Manado',
                        isPopular: true),
                  ),
                  SizedBox(width: edge),
                  CityCard(
                    CityModel(
                        id: 2,
                        imageUrl: 'assets/city_image.png',
                        name: 'Bitung'),
                  ),
                  SizedBox(width: edge),
                  CityCard(
                    CityModel(
                        id: 3,
                        imageUrl: 'assets/city_image.png',
                        name: 'Tondano'),
                  ),
                  SizedBox(width: edge),
                  CityCard(
                    CityModel(
                        id: 4,
                        imageUrl: 'assets/city_image.png',
                        name: 'Tomohon'),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
