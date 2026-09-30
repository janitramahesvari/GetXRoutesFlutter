import 'package:firstproject/component/custom_textfield.dart';
import 'package:firstproject/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final RxString selectedJenisKelamin = "Laki-laki".obs;
  final List<String> listJenisKelamin = ["Laki-laki", "Perempuan"];

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(title: Text("Registratuion Page")),
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextfield(txtController: txtNama, myHint: "input name"),
            CustomTextfield(txtController: txtAlamat, myHint: "input name"),
            CustomTextfield(txtController: txtEmail, myHint: "input name"),
            CustomTextfield(txtController: txtNoWa, myHint: "input name"),

            Obx(
              () => DropdownButtonFormField<String>(
                value: selectedJenisKelamin.value,
                items: listJenisKelamin.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  if (newValue != null) {
                    selectedJenisKelamin.value = newValue;
                  }
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // get to untuk pindah
                // argument untuk kirim data
                // get off
                Get.toNamed(
                  Routes.confirm_regristation,
                  arguments: {
                    'name': txtNama.text.toString(),
                    'alamat': txtAlamat.text.toString(),
                    'email': txtEmail.text.toString(),
                    'nowa': txtNoWa.text.toString(),
                    'jenis_kelamin': selectedJenisKelamin.value,

                    // dari widget kalian,
                    // dll
                  },
                );
              },
              child: Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}