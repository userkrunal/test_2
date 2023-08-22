import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_2/insta/conttroller/insta_controller.dart';
import 'package:test_2/insta/model/user_feed.dart';
import 'package:test_2/insta/model/userid_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

String id='';
class _SearchScreenState extends State<SearchScreen> {
  InstaContrlloer contrlloer= Get.put(InstaContrlloer());
  TextEditingController txtSearch=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtSearch,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purpleAccent),
                ),
                hintText: "Search",
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 7.h,
          //     width: 100.w,
          //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.shade400),
          //     child: Row(
          //       children: [
          //         SizedBox(width: 10),
          //         Text("Search",style: TextStyle(fontSize: 20),),
          //       ],
          //     ),
          //   ),
          // ),
          FutureBuilder(future: contrlloer.getidapi(txtSearch.text),builder: (context, snapshot) {
            if(snapshot.hasError)
              {
                return Text("${snapshot.error}");
              }
            else if(snapshot.hasData)
              {
                UsernameModel usernameModel=snapshot.data!;
                return Column(
                  children: [
                    Text("${usernameModel.result.}")
                  ],
                );


              }
            return Center(child: CircularProgressIndicator());
          },
          ),
        ],
      ),
      
    ));
  }
}
