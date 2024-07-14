import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/estatedetailscontroller.dart';
import 'package:realestateapp/core/constant/routes.dart';

class EstateDetails extends StatelessWidget {
  const EstateDetails({super.key});

  @override
  Widget build(BuildContext context) {
    EstateDetailsController controller = Get.put(EstateDetailsController());
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoute.estateimagedetails);
                    },
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 10 / 8,
                        // height: 350,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                      ),
                      items: controller.items.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "$i",
                                  fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home),
                          SizedBox(
                            width: 3,
                          ),
                          Text("Appartment"),
                        ],
                      ),
                      Container(
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
                      )
                    ],
                  ),
                  ListTile(
                    title: Text("السويداء", style: TextStyle(fontSize: 14)),
                    leading: Icon(Icons.location_city),
                  ),
                  ListTile(
                    title: Text("طريق قنوات برج علي طابق سابع",
                        style: TextStyle(fontSize: 14)),
                    leading: Icon(Icons.location_on),
                  ),
                  ListTile(
                    title:
                        Text("المساحة : 80 م", style: TextStyle(fontSize: 14)),
                    leading: Icon(Icons.space_dashboard),
                  ),
                  ListTile(
                    title: Text("إيجار", style: TextStyle(fontSize: 14)),
                    leading: Icon(Icons.category),
                  ),
                  ListTile(
                    title:
                        Text("250000 / شهري", style: TextStyle(fontSize: 14)),
                    leading: Icon(Icons.currency_lira),
                  ),
                  ListTile(
                    title: Text(":التفاصيل", style: TextStyle(fontSize: 14)),
                    leading: Icon(Icons.pin),
                    subtitle: Text(
                        " شقة مفروشة 2 غرف نوم صالون مع مطبخ و 2 حمام",
                        style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("تواصل مع صاحب العقار"),
                Container(
                  alignment: Alignment.center,
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
                          borderRadius: BorderRadius.circular(20),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
