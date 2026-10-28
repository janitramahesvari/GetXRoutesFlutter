import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firstproject/controllers_09/listmakanan_controller.dart';
import 'package:firstproject/routes09.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Makanan'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                'Rekomendasi Makanan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              height: 220,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.dataMakanan.length,
                  itemBuilder: (context, index) {
                    final makanan = controller.dataMakanan[index];

                    return InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes09.detail_makanan,
                          arguments: makanan,
                        );
                      },
                      child: Container(
                        width: 180,
                        margin: const EdgeInsets.only(right: 12),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.restaurant,
                                  size: 60,
                                  color: Colors.blue,
                                ),

                                const SizedBox(height: 10),

                                Text(
                                  makanan.namaMakanan,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                Text(
                                  'Rp ${makanan.harga}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}