import 'package:get/get.dart';

class DetailTeamController extends GetxController {
  late String strTeam;
  late String strBadge;
  late String strStadium;
  late String intFormedYear;
  late String strLocation;
  late String strDescriptionEN;

  @override
  void onInit() {
    super.onInit();
    final argument = Get.arguments;
    strTeam = argument['strTeam'] ?? '';
    strBadge = argument['strBadge'] ?? '';
    strStadium = argument['strStadium'] ?? '';
    intFormedYear = argument['intFormedYear'] ?? '';
    strLocation = argument['strLocation'] ?? '';
    strDescriptionEN = argument['strDescriptionEN'] ?? '';
  }
}