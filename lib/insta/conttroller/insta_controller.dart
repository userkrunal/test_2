import 'package:get/get.dart';
import 'package:test_2/insta/helper/insta_helper.dart';
import 'package:test_2/insta/model/user_feed.dart';
import 'package:test_2/insta/model/userid_model.dart';

class InstaContrlloer extends GetxController
{
  Future<UserfeedModel> getApi()
  async {
   return await InstaHelper.helper.userinfoApi();
  }
  Future<UsernameModel> getidapi(String id)
  async {
    return await InstaHelper.helper.getuseridApi(id);
  }
}