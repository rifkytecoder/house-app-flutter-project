import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/models/space_model.dart';
import 'package:http/http.dart' as http;

// TODO: Fetch Data dari Server
class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var result = await http
        .get(Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces'));
    // print(result.statusCode); Testing status code
    // print(result.body); Testing data body
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<SpaceModel> spaces =
          data.map((item) => SpaceModel.fromJson(item)).toList();
      return spaces;
    } else {
      return <SpaceModel>[];
    }
  }
}
