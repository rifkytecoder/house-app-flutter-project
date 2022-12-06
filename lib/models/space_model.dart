// class SpaceModel {
//   int id;
//   String name;
//   String imageUrl;
//   double price;
//   String city;
//   String country;
//   int rating;

//   SpaceModel({
//     required this.id,
//     required this.name,
//     required this.imageUrl,
//     required this.price,
//     required this.city,
//     required this.country,
//     required this.rating,
//   });
// }

// To parse this JSON data, do
//
//     final spaceModel = spaceModelFromJson(jsonString);

import 'dart:convert';

SpaceModel spaceModelFromJson(String str) =>
    SpaceModel.fromJson(json.decode(str));

String spaceModelToJson(SpaceModel data) => json.encode(data.toJson());

class SpaceModel {
  SpaceModel({
    required this.id,
    required this.name,
    required this.city,
    required this.country,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchens,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
  });

  int id;
  String name;
  String city;
  String country;
  int price;
  String imageUrl;
  int rating;
  late String address;
  late String phone;
  late String mapUrl;
  late List<String> photos;
  late int numberOfKitchens;
  late int numberOfBedrooms;
  late int numberOfCupboards;

  factory SpaceModel.fromJson(Map<String, dynamic> json) => SpaceModel(
        id: json["id"],
        name: json["name"],
        city: json["city"],
        country: json["country"],
        price: json["price"],
        imageUrl: json["image_url"],
        rating: json["rating"],
        address: json["address"],
        phone: json["phone"],
        mapUrl: json["map_url"],
        photos: List<String>.from(json["photos"].map((x) => x)),
        numberOfKitchens: json["number_of_kitchens"],
        numberOfBedrooms: json["number_of_bedrooms"],
        numberOfCupboards: json["number_of_cupboards"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city": city,
        "country": country,
        "price": price,
        "image_url": imageUrl,
        "rating": rating,
        "address": address,
        "phone": phone,
        "map_url": mapUrl,
        "photos": List<dynamic>.from(photos.map((x) => x)),
        "number_of_kitchens": numberOfKitchens,
        "number_of_bedrooms": numberOfBedrooms,
        "number_of_cupboards": numberOfCupboards,
      };
}
