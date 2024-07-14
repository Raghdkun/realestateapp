
import 'package:get/get.dart';
import 'package:realestateapp/core/constant/routes.dart';
import 'package:realestateapp/core/middleware/mymiddleware.dart';
import 'package:realestateapp/splashscreen.dart';
import 'package:realestateapp/views/explorepage.dart';
import 'package:realestateapp/views/languages/language.dart';
import 'package:realestateapp/views/screens/auth/forgetpassword/succsess_resetpassword.dart';
import 'package:realestateapp/views/screens/customerauth/customerdata/customerlocation.dart';
import 'package:realestateapp/views/screens/estatedetails.dart';
import 'package:realestateapp/views/screens/onboarding/screen.dart';


import '../views/screens/auth/forgetpassword/forgetpassword.dart';
import '../views/screens/auth/forgetpassword/resetpassword.dart';
import '../views/screens/auth/forgetpassword/verfiycode.dart';
import '../views/screens/auth/login.dart';
import '../views/screens/auth/signup.dart';
import '../views/screens/auth/success_signup.dart';
import '../views/screens/auth/virefycodesignup.dart';

import '../views/screens/users/usersview.dart';
import 'views/screens/account.dart';
import 'views/screens/customerauth/customerdata/addlocationmap.dart';
import 'views/screens/customerauth/forgetpassword/forgetpassword.dart';
import 'views/screens/customerauth/forgetpassword/resetpassword.dart';
import 'views/screens/customerauth/forgetpassword/succsess_resetpassword.dart';
import 'views/screens/customerauth/forgetpassword/verfiycode.dart';
import 'views/screens/customerauth/login.dart';
import 'views/screens/customerauth/signup.dart';
import 'views/screens/customerauth/success_signup.dart';
import 'views/screens/customerauth/virefycodesignup.dart';
import 'views/screens/homescreen.dart';
import 'views/screens/realestatedetailsimages.dart';


List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRoute.home,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: AppRoute.language,
      page: () => const Language(),
      middlewares: [MyMiddleWare()],
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: AppRoute.explore,
      page: () => const ExplorePage(),
      // middlewares: [MyMiddleWare()],
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: "/",
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: AppRoute.onboarding,
      page: () => const Onbording(),
      // middlewares: [MyMiddleWare()],
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),

      //auth 
  GetPage(
      name: AppRoute.login,
      page: () => const Login(),
      // middlewares: [MyMiddleWare()],
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.signUp,
      page: () => const SignUp(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.forgetPassword,
      page: () => const ForgetPassword(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.verfiyCode,
      page: () => const VerfiyCode(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.resetPassword,
      page: () => const ResetPassword(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.successSignUp,
      page: () => const SuccessSignUp(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.verfiyCodeSignup,
      page: () => const VerfiyCodeSignUp(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: AppRoute.account,
      page: () => const Account(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),

         //auth c
  GetPage(
      name: AppRoute.loginc,
      page: () => const Loginc(),
      // middlewares: [MyMiddleWare()],
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.signUpc,
      page: () => const SignUpc(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.forgetPasswordc,
      page: () => const ForgetPasswordc(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.verfiyCodec,
      page: () => const VerfiyCodec(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.resetPasswordc,
      page: () => const ResetPasswordc(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.successResetPasswordc,
      page: () => const SuccessResetPasswordc(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.SuccessSignUpc,
      page: () => const SuccessSignUpc(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
      name: AppRoute.verfiyCodeSignupc,
      page: () => const VerfiyCodeSignUpc(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: AppRoute.account,
      page: () => const Account(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      // customer location 
      GetPage(
      name: AppRoute.customerlocation,
      page: () => const CustomerLocation(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: AppRoute.Addlocationmap,
      page: () => const AddLocationMap(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),

  //// users
  GetPage(
      name: AppRoute.usersview,
      page: () => const UsersView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
/// estates

GetPage(
      name: AppRoute.estatedetails,
      page: () => const EstateDetails(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
      name: AppRoute.estateimagedetails,
      page: () => const RestateDetImages(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),



      
      
];
