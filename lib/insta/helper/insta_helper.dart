import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_2/insta/model/user_feed.dart';
import 'package:test_2/insta/model/userid_model.dart';

class InstaHelper
{
  static  InstaHelper helper= InstaHelper();

  Future<UserfeedModel> userinfoApi()
  async {
    String? link='https://instagram174.p.rapidapi.com/api/v1/user/25025320/feed';
    var respones=await http.get(Uri.parse(link),
      headers: {
        'X-RapidAPI-Key':'12dd88f577msh44f44d4113bb7ebp166c90jsn93bf45a939ff',
        'X-RapidAPI-Host':'instagram174.p.rapidapi.com'
      }
    );
    var json=jsonDecode(respones.body);
    return await UserfeedModel.fromJson(json);
  }




  Future<UsernameModel> getuseridApi(String id)
  async {
    String? link="https://instagram174.p.rapidapi.com/api/v1/$id/instagram/id";
    var respones=await http.get(Uri.parse(link),
      headers: {
        'X-RapidAPI-Key':'12dd88f577msh44f44d4113bb7ebp166c90jsn93bf45a939ff',
        'X-RapidAPI-Host':'instagram174.p.rapidapi.com'
      }
    );
    var json=jsonDecode(respones.body);
    return await UsernameModel.fromJson(json);
  }
}