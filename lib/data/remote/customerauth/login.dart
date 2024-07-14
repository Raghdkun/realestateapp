


import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class LogincData {
  Crud crud ; 

  LogincData(this.crud) ;

  postData( String email ,String password  ) async {
    var response = await crud.postData(AppLink.loginc , {
      "email" : email , 
      "password" : password , 
      
      


    }); 
   return response.fold((l) => l, (r) => r) ;
  }
}