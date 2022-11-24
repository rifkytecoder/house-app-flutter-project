import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/theme.dart';
import 'package:flutter_project_house_app/widgets/facility_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 30),
                      // TODO: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Green Kawanua',
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                const SizedBox(height: 2),
                                Text.rich(TextSpan(
                                    text: '\$45',
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: '/ Month',
                                        style: greyTextStyle.copyWith(
                                            fontSize: 16),
                                      )
                                    ]))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.amber[700],
                                ),
                                const SizedBox(width: 2),
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.amber[700],
                                ),
                                const SizedBox(width: 2),
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.amber[700],
                                ),
                                const SizedBox(width: 2),
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.amber[700],
                                ),
                                const SizedBox(width: 2),
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(width: 2),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // TODO: MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            FacilityItem(
                                name: 'Kitchen',
                                imageUrl: 'assets/kitchen_icon.png',
                                total: 2),
                            FacilityItem(
                                name: 'Bedroom',
                                imageUrl: 'assets/bedroom_icon.png',
                                total: 3),
                            FacilityItem(
                                name: 'Big lemari',
                                imageUrl: 'assets/lemari_icon.png',
                                total: 3),
                            // FacilityItem(),
                            // FacilityItem(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // TODO: PHOTOS
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: edge),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/photo_1.png',
                                height: 110,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 18),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/photo_1.png',
                                height: 110,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 18),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/photo_1.png',
                                height: 110,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 18),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/photo_1.png',
                                height: 110,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 18),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/photo_1.png',
                                height: 110,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 18),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/photo_1.png',
                                height: 110,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // TODO: LOCATION
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jln, Lapangan, Paniki \nManado',
                              style: greyTextStyle,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.location_on_sharp,
                                  color: greyColor,
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      // TODO: BUTTON BOOKING NOW
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(purpleColor)),
                            child: Text('Booking Now',
                                style: whiteTextStyle.copyWith(fontSize: 18)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                )
              ],
            ),
            // TODO: INKWELL boxshape button back and favorite
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.favorite_border_rounded,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
