



import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class SellcardsData {
  Crud crud ; 

  SellcardsData(this.crud) ;

  getData() async {
    var response = await crud.postData(AppLink.buyercards , {}); 
   return response.fold((l) => l, (r) => r) ;
  }
}