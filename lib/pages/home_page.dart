import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/models/city_model.dart';
import 'package:flutter_project_house_app/models/space_model.dart';
import 'package:flutter_project_house_app/models/tips_model.dart';
import 'package:flutter_project_house_app/theme.dart';
import 'package:flutter_project_house_app/widgets/city_card.dart';
import 'package:flutter_project_house_app/widgets/space_card.dart';

import '../widgets/bottom_navbar_item.dart';
import '../widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(height: edge),
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
              ),

              // TODO: TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              // Tips Card
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: <Widget>[
                    TipsCard(TipsModel(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: 'assets/tips_icon.png',
                        updateAt: 'Updated 28 April')),
                    const SizedBox(height: 20),
                    TipsCard(TipsModel(
                        id: 2,
                        title: 'Manado Fairship',
                        imageUrl: 'assets/tips_icon.png',
                        updateAt: 'Updated 28 April')),
                    // const TipsCard(),
                  ],
                ),
              ),
              SizedBox(height: 70 + edge),
            ],
          )),
      // TODO: BOTTOM NAVIGATION BAR
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 240, 242),
            borderRadius: BorderRadius.circular(23)),
        // Icons Navbar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ButtomNavbarItem(
                ikon: Icon(
                  Icons.home,
                  color: purpleColor,
                  size: 35,
                ),
                isActive: true),
            ButtomNavbarItem(
              ikon: Icon(
                Icons.email,
                color: greyColor,
                size: 35,
              ),
            ),
            ButtomNavbarItem(
              ikon: Icon(
                Icons.credit_card,
                color: greyColor,
                size: 35,
              ),
            ),
            ButtomNavbarItem(
              ikon: Icon(
                Icons.favorite,
                color: greyColor,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
