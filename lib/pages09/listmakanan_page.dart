
import 'package:firstproject/routes09.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/controllers_09/listmakanan_controller.dart';
import 'package:firstproject/component_09/custom_text.dart';
import 'package:get/get.dart';

class ListMakananpage extends StatelessWidget {
  ListMakananpage({super.key});

  final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Makanan'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.dataMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.dataMakanan[index];

              return Dismissible(
                key: Key(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  controller.dataMakanan.removeAt(index);
                },
                background: Container(
                  color: const Color.fromARGB(255, 87, 144, 250),
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes09.detail_makanan,                                                
                      arguments: makanan,
                    );
                  },
                  child: ListTile(
                    title: CustomText(
                      text: makanan.namaMakanan,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: CustomText(
                      text: 'Harga: ${makanan.harga}',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
