import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/pages/home_page.dart';
import 'package:flutter_project_house_app/theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/404_image.png', width: 300)),
            const SizedBox(height: 70),
            Text(
              'Where are you going?',
              style: blackTextStyle.copyWith(fontSize: 24),
            ),
            const SizedBox(height: 14),
            Text(
              'Seems like the page that you were\n requested is already gone',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            // button back to home and remove view error 404
            ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: SizedBox(
                height: 50,
                width: 210,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(purpleColor)),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          (route) => false);
                    },
                    child: Text('Back to Home', style: whiteTextStyle)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
