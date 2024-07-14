

import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud ; 

  VerifyCodeForgetPasswordData(this.crud) ;

  postData( String email ,String verifycode  ) async {
    var response = await crud.postData(AppLink.verfiyCodeForgetPassword , {
      "email" : email , 
      "verifycode" : verifycode , 
      
      


    }); 
   return response.fold((l) => l, (r) => r) ;
  }
}