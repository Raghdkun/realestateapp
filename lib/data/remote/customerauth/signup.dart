

import 'package:realestateapp/core/class/crud.dart';
import 'package:realestateapp/linkapi.dart';

class SignUpcData {
  Crud crud;

  SignUpcData(this.crud);

  postData(String username, String password, String email, String phone) async {
    var response = await crud.postData(AppLink.signupc, {
      "name": username,
      "password": password,
      "email": email,
      "phone" : phone
    });
    return response.fold((l) => l, (r) => r);
  }
}
