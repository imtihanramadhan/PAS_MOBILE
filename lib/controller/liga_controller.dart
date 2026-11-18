import 'package:pas_project/model/team_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LigaController extends GetxController {
  var isLoading = false.obs;

  var listTeamsModel = Rxn<ListTeamsModel>();

  // biar gampang dipakai di ListView
  RxList<Team> teams = <Team>[].obs;

  // method hit API
  void getTeams() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English_Premier_League",
      );

      final response = await http.get(url);

      isLoading.value = false;
      if (response.statusCode == 200) {
        listTeamsModel.value = listTeamsModelFromJson(response.body);
        teams.value = listTeamsModel.value?.teams ?? [];
      } else {
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("gagal", e.toString());
      print("error nya $e");
    }
  }

  @override
  void onInit() {
    getTeams(); // langsung ambil data saat controller dibuat
    super.onInit();
  }
}
