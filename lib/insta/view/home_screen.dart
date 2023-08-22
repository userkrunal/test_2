import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_2/insta/conttroller/insta_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  InstaContrlloer contrlloer =Get.put(InstaContrlloer());

  @override
  void initState() {
    super.initState();
    contrlloer.getApi();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Instagram",style: TextStyle(fontSize: 30,color: Colors.white),),
                Spacer(),
                Icon(Icons.favorite_outline_outlined,color: Colors.white,size: 30,),
                SizedBox(width: 20),
                Icon(Icons.maps_ugc_sharp,color: Colors.white,size: 30,),
                SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              sotry("assets/image/img.png"),
              sotry("assets/image/img_1.png"),
              sotry("assets/image/img_2.png"),
              sotry("assets/image/img_3.png"),
            ],
          ),
          SizedBox(height:2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("My Story",style: TextStyle(color: Colors.white)),
              Text("d.v_4444",style: TextStyle(color: Colors.white)),
              Text("aman_00",style: TextStyle(color: Colors.white)),
              Text("ak_0909",style: TextStyle(color: Colors.white)),
            ],
          ),
          Container(height: 80),
          Spacer(),
          Container(
            height: 5.h,
            width: 100.w,
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home,color: Colors.white,),
                  InkWell(onTap: () {
                    Get.toNamed('/search');
                  },child: Icon(Icons.search,color: Colors.white,)),
                  Icon(Icons.favorite,color: Colors.white,),
                  Icon(Icons.add_box_outlined,color: Colors.white),
                  Icon(Icons.person,color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    )
    );
  }

}

Widget sotry( String image)
{
  return Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(border: Border.all(color: Colors.amberAccent,width: 2),borderRadius: BorderRadius.circular(40),color: Colors.white,image: DecorationImage(image: AssetImage("${image}"),fit: BoxFit.fill)),
  );
}
