import 'package:flutter/material.dart';
import 'package:pas_project/menu/Feat.dart';
import 'package:pas_project/menu/home.dart';
import 'package:pas_project/menu/profile.dart';
import 'package:get/get.dart';


class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  //list page yang ada dalam menu bottom 
  List<Widget> listPage = [Home(), Feat(), Profile()];
}
