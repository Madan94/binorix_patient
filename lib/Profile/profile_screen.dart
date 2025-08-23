import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'components/profile_avatar.dart';
import 'components/profile_info_card.dart';

class ProfileScreen extends StatelessWidget {
  final Map<String, dynamic> userData = {
    "name": "Prieyan",
    "PhoneNumber": "9360179308",
    "email": "prieyan@gmail.com",
    "password": "123456",
    "dob": "23/05/2002",
    "gender": "Male",
    "address": "Xhoaafnsdfje",
    "otherDetails": "Am allergic to peanuts",
  };

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const ProfileAvatar(), // ✅ reusable avatar widget
            const SizedBox(height: defaultPadding),
            ProfileInfoCard(userData: userData), // ✅ details card
            const SizedBox(height: defaultPadding),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Navigate to Edit Profile
              },
              icon: const Icon(Icons.edit),
              label: const Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
