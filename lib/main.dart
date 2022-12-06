import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/providers/space_provider.dart';
import 'package:provider/provider.dart';

import 'pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SpaceProvider(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
          // home: ErrorPage(),
        ));
  }
}
