import 'package:firstproject/pages/confirmreg_page.dart';
import 'package:firstproject/pages/registration_page.dart';
import 'package:get/get.dart';


class Routes {
  //list variable nama halaman 
  static const String regristation = "/regristation";
  static const String confirm_regristation = "/confirm_regristation";
  //other pages here
//ditempel di main.dart / didaftarkan di main.dart
  static final myPages=[
    GetPage(name: regristation, page: ()=> RegistrationPage()),
    GetPage(name: confirm_regristation, page: ()=> ConfirmregPage()),
  ];

}