import 'package:get/get.dart';

class TransaksiController extends GetxController {
  var hasil = 0.obs;
  RxInt get hargaSemua => hasil;

  void HitunganTotal(int angka1, int angka2) {
    int SubTotal = angka1 * angka2;
    hasil.value = SubTotal;

    int ppn = angka1 * angka2;
    hasil.value = ppn;

    int TotalHarga = angka1 + angka2;
    hasil.value = TotalHarga;
  }
}
