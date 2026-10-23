import 'package:get/get.dart';
import 'package:firstproject/models09/makanan_model.dart';

class DetailmakananController extends GetxController {
  late MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }
}