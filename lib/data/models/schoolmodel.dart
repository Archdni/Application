 
import 'package:cloud_firestore/cloud_firestore.dart';

class SchoolModel {
  String? name;
  String? address;
  String? imageUrl;
  String? description;
  String? phone;
  double? rating;
  String? price;
  int? students;
  String? gender;
  String? city;
  double latitude;
  double longitude;
  SchoolModel(
      {this.name,
      this.phone,
      this.address,
      this.imageUrl,
      this.description,
      this.rating,
      this.price,
      this.students,
      this.gender,
      this.city,
      required this.latitude,
     required this.longitude,});
      
factory SchoolModel.fromDocument(QueryDocumentSnapshot doc) {
    return SchoolModel(
    name: doc["name"],
    phone: doc["phone"],
    address: doc["address"],
    imageUrl: doc["image"],
    description: doc["description"],
    rating: doc["rating"],
    price: doc["price"],
    students: doc["students"],
    gender: doc["gender"],
    city:doc["city"],
    latitude: doc["latitude"],
    longitude: doc["longitude"],
    );
  }

}
  