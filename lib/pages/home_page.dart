import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/models/city_model.dart';
import 'package:flutter_project_house_app/models/space_model.dart';
import 'package:flutter_project_house_app/theme.dart';
import 'package:flutter_project_house_app/widgets/city_card.dart';
import 'package:flutter_project_house_app/widgets/space_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: edge),
            child: ListView(
              children: [
                // TODO: TITLE/HEADER
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
                // TODO: POPULAR CITIES
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Popular Cities',
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
                ),
                const SizedBox(height: 30),
                // TODO: RECOMMENDED SPACE
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Recommended Space',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    children: <Widget>[
                      SpaceCard(SpaceModel(
                          id: 1,
                          name: 'Green Kawanua',
                          imageUrl: 'assets/space_room_image.png',
                          price: 49,
                          city: 'Manado',
                          country: 'Indonesia',
                          rating: 4)),
                      const SizedBox(height: 30),
                      SpaceCard(SpaceModel(
                          id: 2,
                          name: 'Citraland',
                          imageUrl: 'assets/space_room_image.png',
                          price: 49,
                          city: 'Tondano',
                          country: 'Indonesia',
                          rating: 4)),
                      const SizedBox(height: 30),
                      SpaceCard(SpaceModel(
                          id: 3,
                          name: 'Tribeka Park',
                          imageUrl: 'assets/space_room_image.png',
                          price: 49,
                          city: 'Tomohon',
                          country: 'Indonesia',
                          rating: 4)),
                      const SizedBox(height: 30),
                      // SpaceCard(),
                      // SizedBox(height: 30),
                      // SpaceCard(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
