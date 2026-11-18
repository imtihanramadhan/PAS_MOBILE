import 'package:flutter/material.dart';
import 'package:pas_project/controller/liga_controller.dart';
import 'package:pas_project/routes.dart';
import 'package:get/get.dart';  

class Feat extends StatelessWidget {
  Feat({super.key});

  final controller = Get.put(LigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text("List Teams Premier League"),
        backgroundColor: const Color.fromARGB(255, 140, 200, 226),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.teams.length,
                  itemBuilder: (context, index) {
                    final team = controller.teams[index];
                    return SizedBox(
                      width: 320,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(
                            Routes.detailTeam,
                            arguments: {
                              'strTeam': team.strTeam,
                              'strBadge': team.strBadge,
                              'strStadium': team.strStadium,
                              'intFormedYear': team.intFormedYear,
                              'strLocation': team.strLocation,
                              'strDescriptionEN': team.strDescriptionEN,
                            },
                          );
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              leading: team.strBadge.isNotEmpty
                                  ? Image.network(
                                      team.strBadge,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              const Icon(Icons.sports_soccer),
                                    )
                                  : const Icon(Icons.sports_soccer),
                              title: Text(
                                team.strTeam,
                                style: const TextStyle(fontSize: 16),
                              ),
                              subtitle: Text(
                                team.strStadium,
                                style: const TextStyle(fontSize: 14),
                              ),
                              trailing: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}