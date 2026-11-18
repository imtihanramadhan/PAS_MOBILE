import 'package:pas_project/menu/home.dart';
import 'package:pas_project/pages/detail_page.dart';
import 'package:pas_project/pages/main_menu_page.dart';
import 'package:pas_project/pages/Login_page.dart';
import 'package:pas_project/pages/transaksi_pembelian.dart';
import 'package:pas_project/menu/Feat.dart';
import 'package:pas_project/pages/detail_team_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String detailTeam = "/detailTeam";
  static const String feat = "/feat";
  static const String transaksi = "/transaksi";
  static const String login = "/login";
  static const String mainMenu = "/mainMenu";
  static const String detail = "/detail";
  static const String home = "/home";
  //other routes can be added here

  // List of pages for GetX navigation
  static final pages = [
    GetPage(name: detailTeam, page: () => DetailTeamPage()),
    GetPage(name: feat, page: () => Feat()),
    GetPage(name: transaksi, page: () => TransaksiPembelian()),
    GetPage(name: login, page: () => EmailLoginPage()),
    GetPage(name: mainMenu, page: () => MainMenuPage()),
    GetPage(name: detail, page: () => DetailPage()),
    GetPage(name: home, page: () => Home()),
  ];
}
