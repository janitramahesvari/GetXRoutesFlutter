import 'package:get/get.dart';
import 'package:firstproject/models/makanan_models.dart';

class HomeController extends GetxController{
 List<MakananModels> listMakanan = [
    MakananModels(namaMakanan: "Soto Ayam", hargaMakanan: "10.000",
     gambarMakanan:"https://www.dapurkobe.co.id/wp-content/uploads/soto-ayam.jpg"),

    MakananModels(namaMakanan: "Lentog", hargaMakanan: "25.000", 
    gambarMakanan: "https://tourism.kuduskab.go.id/wp-content/uploads/2024/12/lentog-tanjung-4-1536x1024.jpg"),

    MakananModels(namaMakanan: "Pindang Kerbau", hargaMakanan: "55.000", 
    gambarMakanan: "https://disbudpar.kuduskab.go.id/kurmacenter/wp-content/uploads/2022/12/3-2-768x768.jpg"),


    MakananModels(namaMakanan: "Garang Asem", hargaMakanan: "15.000",
     gambarMakanan:"https://nico.co.id/wp-content/uploads/2025/12/garang-asem.jpg"),


    MakananModels(namaMakanan: "Jenang", hargaMakanan: "20.000",
    gambarMakanan:"https://cdn-linkumkm.bri.co.id/uploads/library/1/2/4/0/2/12402.jpg"),
  ].obs;


}