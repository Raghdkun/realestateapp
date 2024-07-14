
import 'package:realestateapp/linkapi.dart';

import '../../../core/class/crud.dart';

class VerfiyCodeSignUpData {
  Crud crud;

  VerfiyCodeSignUpData(this.crud);

  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verfiyCodeSignUp, {
      "email": email,
      "verfiycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
  resendData(String email, ) async {
    var response = await crud.postData(AppLink.resend, {
      "email": email,
      
    });
    return response.fold((l) => l, (r) => r);
  }
}
