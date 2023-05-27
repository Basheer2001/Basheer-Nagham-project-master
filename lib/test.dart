
import 'package:dupro/wallet.dart';
import 'package:flutter/cupertino.dart';

class Album {
  final String id;
  final String name;
  final String email;
  final String image;
  final String experiences;
  final String address;
  final String number;

  const Album({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.experiences,
    required this.address,
    required this.number,
  });

  factory Album.fromJson(Map<String, dynamic> json)=>Album(

    id: json['id'],
    name: json['name'],
    email: json['email'],
    image: json['image'],
    experiences: json['experiences'],
    address: json['address'],
    number: json['number'],

  );


  Map<String, dynamic>tojson() =>
      {
        'id':id,
        'name':name,
        'email':email,
        'image':image,
        'experiences':experiences,
        'address':address,
        'number':number,
      };

}