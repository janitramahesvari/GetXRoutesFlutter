import 'package:firstproject/routes.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/controller/listmakanan_controller.dart';
import 'package:get/get.dart';
// 1. PASTIKAN IMPORT FILE COMPONENT-NYA DI SINI (sesuaikan letak foldernya)
import 'package:firstproject/component/listmakanancard.dart'; 

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Makanan')),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              
              return Dismissible(
                key: Key(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  controller.listMakanan.removeAt(index);
                },
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.detail_makanan,
                      arguments: makanan,
                    );
                  },
                  // 2. CARD YANG PANJANG TADI CUKUP DIGANTI JADI 1 BARIS INI:
                  child: Listmakanancard(
                    namaMakanan: makanan.namaMakanan,
                    hargaMakanan: makanan.hargaMakanan,
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