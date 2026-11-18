import 'package:pas_project/controller/detail_team_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailTeamPage extends StatelessWidget {
  DetailTeamPage({super.key});

  final controller = Get.put(DetailTeamController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.strTeam),
        backgroundColor: const Color.fromARGB(255, 140, 200, 226),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (controller.strBadge.isNotEmpty)
              Center(
                child: Image.network(
                  controller.strBadge,
                  width: 150,
                  height: 150,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.sports_soccer, size: 100),
                ),
              ),
            const SizedBox(height: 16),
            Text(
              controller.strTeam,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "${controller.strStadium} • Est. ${controller.intFormedYear}",
              style: TextStyle(fontSize: 17, color: const Color.fromARGB(255, 181, 181, 181)),
            ),
            const SizedBox(height: 4),
            Text(
              controller.strLocation,
              style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 137, 137, 137)),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              controller.strDescriptionEN.isNotEmpty
                  ? controller.strDescriptionEN
                  : "No description available.",
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
