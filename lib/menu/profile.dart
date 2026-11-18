import 'package:flutter/material.dart';
import 'package:pas_project/components/profile/custom_profile_item.dart';
import 'package:pas_project/components/profile/custom_profile_photo.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 173, 176, 93),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: CustomProfilePhoto(
                imageUrl: "https://th.bing.com/th/id/OIP.p_yVJpMf6hUETy-glD0MQQHaLG?w=132&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
              ),
            ),
            SizedBox(height: 40),
            CustomProfileItem(
              icon: Icons.person_outline,
              title: "Name",
              value: "Imtihan",
            ),
            CustomProfileItem(
              icon: Icons.info_outline,
              title: "About",
              value: "Hi",
            ),
            CustomProfileItem(
              icon: Icons.alternate_email,
              title: "Reserved username",
              value: "rmdhnPorto",
            ),
            CustomProfileItem(
              icon: Icons.phone_outlined,
              title: "Phone",
              value: "+62 8222103538",
            ),
            CustomProfileItem(icon: Icons.link, title: "Link", value: "-"),
          ],
        ),
      ),
    );
  }
}
