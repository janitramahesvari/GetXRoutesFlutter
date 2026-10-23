import 'package:firstproject/menu/history.dart';
import 'package:firstproject/menu/home.dart';
import 'package:firstproject/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainmenuController extends GetxController{

  final RxInt selectedIndex = 0.obs; //pertama di run

  void changePage(int index){ //dipanggil klik
  selectedIndex.value = index;
  }

  //list of page inside menu 
  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}