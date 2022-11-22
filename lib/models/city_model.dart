// model entity
class CityModel {
  late int id;
  late String name;
  late String imageUrl;
  bool isPopular;

  // constructor
  CityModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    this.isPopular = false,
  });
}
