import 'package:firstproject/menu09/history_page.dart';
import 'package:firstproject/menu09/home_page.dart';
import 'package:firstproject/menu09/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainmenuController extends GetxController{

  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];

}