import 'package:get/get.dart';
import 'package:firstproject/models/makanan_models.dart';
class DetailmakananController extends GetxController{

late MakananModels makanan;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    makanan = arguments;
  }

}
