import 'package:flutter/material.dart';
import 'package:pas_project/components/textFailed.dart';
import 'package:pas_project/controller/transaksi_controller.dart';
import 'package:get/get.dart';

class TransaksiPembelian extends StatelessWidget {
  TransaksiPembelian({super.key});

  final controller = Get.put(TransaksiController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Transaksi Harga")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextfield(txtController: txtAngka1, myHint: "input angka 1"),
            SizedBox(height: 10),
            CustomTextfield(txtController: txtAngka2, myHint: "input angka 2"),
            SizedBox(height: 20),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                txtAngka1.clear();
                txtAngka2.clear();
                controller.hargaSemua.value = 0;
              },
              child: Text("Clear"),
            ),
            ElevatedButton(
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);
                controller.HitunganTotal(angka1, angka2);
              },
              child: Text("Total"),
            ),
            SizedBox(height: 20),
            Obx(
              () => Text(
                controller.hargaSemua.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
