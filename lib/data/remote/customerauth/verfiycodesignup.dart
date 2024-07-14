
import 'package:realestateapp/linkapi.dart';

import '../../../core/class/crud.dart';

class VerfiyCodeSignUpcData {
  Crud crud;

  VerfiyCodeSignUpcData(this.crud);

  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verfiyCodeSignUpc, {
      "email": email,
      "verfiycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
  resendData(String email, ) async {
    var response = await crud.postData(AppLink.resendc, {
      "email": email,
      
    });
    return response.fold((l) => l, (r) => r);
  }
}
