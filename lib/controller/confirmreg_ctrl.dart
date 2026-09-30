import 'package:get/get.dart';

class ConfirmregCtrl extends GetxController{

   late String nama;
   late String alamat;
   late String email;
   late String nowa;
   late String jeniskelamin;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    nama = arguments['alamat'];
    nama = arguments['email'];
    nama = arguments['nowa'];
    nama = arguments['jenis_kelamin'];

  }
}