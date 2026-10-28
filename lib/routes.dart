import 'package:firstproject/pages/confirmreg_page.dart';
import 'package:firstproject/pages/mainmenu_page.dart';
import 'package:firstproject/pages/menudrawer_page.dart';
import 'package:firstproject/pages/registration_page.dart';
// import 'package:firstproject/pages/listmakanan_page.dart';
// import 'package:firstproject/pages/detailmakanan_page.dart';
import 'package:get/get.dart';


class Routes {
  //list variable nama halaman 
  static const String regristation = "/regristation";
  static const String confirm_regristation = "/confirm_regristation";
  // static const String list_makanan = "/list_makanan";
  // static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  static const String menu_drawer = "/menu_drawer";

  //other pages here
//ditempel di main.dart / didaftarkan di main.dart
  static final myPages=[
    GetPage(name: regristation, page: ()=> RegistrationPage()),
    GetPage(name: confirm_regristation, page: ()=> ConfirmregPage()),
    // GetPage(name: list_makanan, page: ()=> ListMakananPage()),
    // GetPage(name: detail_makanan, page: ()=> DetailMakananPage()),
    GetPage(name: main_menu, page: ()=> MainmenuPage()),
    GetPage(name: menu_drawer, page: ()=> MenudrawerPage()),
  ];


}