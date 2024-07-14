class AppLink {
  static const String server = "https://bluplestore.com/realestateapp";

//// auth 
  static const String signup = "$server/auth/signup.php";
  static const String verfiyCodeSignUp = "$server/auth/verfiycode.php";
  static const String login = "$server/auth/login.php";
  static const String resend = "$server/auth/resend.php";
   //////// Forgetpassword ///////
  static const String checkemail = "$server/auth/forgetpassword/checkemail.php";
  static const String verfiyCodeForgetPassword =
      "$server/auth/forgetpassword/verifycode.php";
  static const String resetPassword =
      "$server/auth/forgetpassword/resetpassword.php";

// auth customer
// auth 
//c letter after every string means customer word
  static const String signupc = "$server/customersauth/signup.php";
  static const String verfiyCodeSignUpc = "$server/customersauth/verfiycode.php";
  static const String loginc = "$server/customersauth/login.php";
  static const String resendc = "$server/customersauth/resend.php";
   //////// Forgetpassword ///////
  static const String checkemailc= "$server/customersauth/forgetpassword/checkemail.php";
  static const String verfiyCodeForgetPasswordc =
      "$server/customersauth/forgetpassword/verifycode.php";
  static const String resetPasswordc =
      "$server/customersauth/forgetpassword/resetpassword.php";

  //images link
  static const String image = "https://bluplestore.com/sellbuycards/upload";
  static const String sellimage = "$image/cardsimg";



  // buyer cards

  static const String buyercards = "$server/sellcards/view.php";


}