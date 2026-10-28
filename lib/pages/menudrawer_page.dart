import 'package:firstproject/controller/mainmenu_controller.dart';
import 'package:firstproject/menu/home.dart';
import 'package:firstproject/menu/history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenudrawerPage extends StatelessWidget {
MenudrawerPage({super.key});

final mainMenuController = Get.put(MainmenuController());
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(

      appBar: AppBar(
        title: const Text("Aplikasi Kuliner"),
        backgroundColor: Colors.teal),

      body: IndexedStack(
        index: mainMenuController.selectedIndex.value,
        children: mainMenuController.listPages,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 35, color: Colors.teal),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Menu Navigasi',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              selected: mainMenuController.selectedIndex.value == 0,
              onTap: () {
                mainMenuController.changePage(0);
                Get.back(); // Tutup drawer otomatis setelah diklik
              },
            ),
            ListTile(
              leading: const Icon(Icons.history_outlined),
              title: const Text("History"),
              selected: mainMenuController.selectedIndex.value == 1,
              onTap: () {
                mainMenuController.changePage(1);
                Get.back();
              },
              ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text("Profile"),
              selected: mainMenuController.selectedIndex.value == 2,
              onTap: () {
                mainMenuController.changePage(2);
                Get.back();
              },
            ),
          ],
        ),
      ),
    ),
    );
  }
}