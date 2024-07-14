import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/homecontroller.dart';
import 'package:realestateapp/controllers/signoutcontroller.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/functions/alertexitapp.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homecontroller = Get.put(HomeController());
    SignOutcontroller signoutcontroller = Get.put(SignOutcontroller());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // if (homecontroller.username == null){
            //   Get.toNamed(AppRoute.login);
            // }else{
            //   // Get.toNamed(App)
            // }
            Get.toNamed(AppRoute.account);
          },
          icon: Icon(Icons.person),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoute.estatedetails);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      child: Column(children: [
                        Stack(
                          children: [
                            ClipRRect(
                                child: Image.asset(
                              AppImageAsset.onBoardingImageOne,
                              fit: BoxFit.fill,
                            )),
                            Positioned(
                                top: 5,
                                left: 5,
                                child: Container(
                                  width: 100,
                                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black54),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Available",
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  child: Row(children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.green),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            FontAwesomeIcons.whatsapp,
                                            color: Colors.white,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.red),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            FontAwesomeIcons.phone,
                                            size: 20,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ]),
                                ))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Apartment",
                                style: TextStyle(fontSize: 13),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "  150000 S.P / Monthly",
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "شارع المحوري بناء الفلاني طابق 4",
                                style: TextStyle(fontSize: 11),
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    child: Column(children: [
                      ClipRRect(
                          child: Image.asset(AppImageAsset.onBoardingImageOne)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [],
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
