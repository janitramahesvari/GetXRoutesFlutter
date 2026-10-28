import 'package:firstproject/controllers_09/mainmenu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final controller = Get.put(MainmenuController());

@override
Widget build(BuildContext context) {
  return Obx(
    () => Scaffold(
      body: IndexedStack(
        index: controller.selectedIndex.value,
        children: controller.listPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.changePage,
        currentIndex: controller.selectedIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    ),
  );
 }
}