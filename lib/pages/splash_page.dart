import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/pages/home_page.dart';
import 'package:flutter_project_house_app/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/splash_image.png')),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Find Best House \nto Best Livings',
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Stop membuang banyak waktu\npada tempat yang tidak nyaman',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 50,
                      width: 210,
                      child: ElevatedButton(
                        onPressed: () {
                          // todo push ke home page
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(purpleColor),
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                        ),
                        child: const Text('Explore Now'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
