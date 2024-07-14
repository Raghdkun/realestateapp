

import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class VerifyCodeForgetPasswordcData {
  Crud crud ; 

  VerifyCodeForgetPasswordcData(this.crud) ;

  postData( String email ,String verifycode  ) async {
    var response = await crud.postData(AppLink.verfiyCodeForgetPasswordc , {
      "email" : email , 
      "verifycode" : verifycode , 
      
      


    }); 
   return response.fold((l) => l, (r) => r) ;
  }
}