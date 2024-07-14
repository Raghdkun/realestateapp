



import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class CheckEmailcData {
  Crud crud;
  CheckEmailcData(this.crud);
  postdata(String email) async {
    var response = await crud.postData(AppLink.checkemailc, {
      "email" : email   
    });
    return response.fold((l) => l, (r) => r);
  }
}