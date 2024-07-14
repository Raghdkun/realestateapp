


import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class ResetPasswordcData {
  Crud crud ; 

  ResetPasswordcData(this.crud) ;

  postData( String email, String password   ) async {
    var response = await crud.postData(AppLink.resetPasswordc , {
       "email" : email , 
      "password" : password
      
      
      


    }); 
   return response.fold((l) => l, (r) => r) ;
  }
}