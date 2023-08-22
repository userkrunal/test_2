// To parse this JSON data, do
//
//     final UsernameModel = UsernameModelFromJson(jsonString);

import 'dart:convert';

UsernameModel UsernameModelFromJson(String str) => UsernameModel.fromJson(json.decode(str));

String UsernameModelToJson(UsernameModel data) => json.encode(data.toJson());

class UsernameModel {
  String? status;
  int? result;

  UsernameModel({
    this.status,
    this.result,
  });

  factory UsernameModel.fromJson(Map<String, dynamic> json) => UsernameModel(
    status: json["status"],
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result,
  };
}
