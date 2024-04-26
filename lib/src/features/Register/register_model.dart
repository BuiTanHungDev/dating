// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String? name;
  String? email;
  String? phone;
  String? birthYear;
  String? gender;
  List<String>? hobbies;
  String? password;
  String? image;

  RegisterModel({
    this.name,
    this.email,
    this.phone,
    this.birthYear,
    this.gender,
    this.hobbies,
    this.password,
    this.image,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        birthYear: json["birthYear"],
        gender: json["gender"],
        hobbies: json["hobbies"] == null
            ? []
            : List<String>.from(json["hobbies"]!.map((x) => x)),
        password: json["password"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "birthYear": birthYear,
        "gender": gender,
        "hobbies":
            hobbies == null ? [] : List<dynamic>.from(hobbies!.map((x) => x)),
        "password": password,
        "image": image,
      };
}
