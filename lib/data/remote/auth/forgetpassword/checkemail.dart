



import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);
  postdata(String email) async {
    var response = await crud.postData(AppLink.checkemail, {
      "email" : email   
    });
    return response.fold((l) => l, (r) => r);
  }
}