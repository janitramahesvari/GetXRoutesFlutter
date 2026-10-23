import 'package:firstproject/controller/mainmenu_controller.dart';
import 'package:firstproject/menu/home.dart';
import 'package:firstproject/menu/history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainmenuPage extends StatelessWidget {
MainmenuPage({super.key});

final mainMenuController = Get.put(MainmenuController());
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(

      body:IndexedStack(index: mainMenuController.selectedIndex.value,
      children: mainMenuController.listPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: mainMenuController.changePage,
        currentIndex: mainMenuController.selectedIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
             label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
             label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
             label: "Home")
        ]),
    ));
  }
}