

import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class TestData {
  Crud crud ; 

  TestData(this.crud) ;

  getData() async {
    var response = await crud.postData(AppLink.server , {}); 
   return response.fold((l) => l, (r) => r) ;
  }
}