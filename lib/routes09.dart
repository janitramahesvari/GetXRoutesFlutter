import 'package:firstproject/pages09/listmakanan_Page.dart';
import 'package:firstproject/pages09/detailmakanan_page.dart';
import 'package:firstproject/pages09/main_menu.dart';
import 'package:get/get.dart';


class Routes09 {
  //list variable nama halaman
  static const String listmakanan = "/listmakanan";
  static const String detail_makanan = "/detail_makanan";
   static const String main_menu = "/main_menu";

  
  static final myPages = [
    GetPage(name: listmakanan, page: () => ListMakananpage()),
    GetPage(name: detail_makanan, page: () => DetailmakananPage()),
    GetPage(name: main_menu, page: () => MainMenu()),
  ];


}