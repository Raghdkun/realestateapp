
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestateapp/controllers/auth/scccsessforgetpassword_controller.dart';
import 'package:realestateapp/core/constant/color.dart';
import 'package:realestateapp/views/widgets/auth/custombutton.dart';
import 'package:realestateapp/views/widgets/auth/justonetextstyle.dart';



class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordImp controller = Get.put(SuccessResetPasswordImp());
    return Scaffold(
      appBar: AppBar(
       
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Checked",
          
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             MyCustomTextStyle(mytext: "37".tr),
            const Center(child: Icon(Icons.check_circle_outline, size: 200, color: AppColor.primaryColor,)),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "36".tr,
                onPressed: () {
                  controller.goToLogIn() ;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
