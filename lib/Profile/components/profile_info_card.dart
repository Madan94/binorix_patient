import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'profile_info_row.dart';

class ProfileInfoCard extends StatelessWidget {
  final Map<String, dynamic> userData;

  const ProfileInfoCard({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileInfoRow(icon: Icons.person, title: "Name", value: userData["name"]),
            ProfileInfoRow(icon: Icons.phone, title: "Phone", value: userData["PhoneNumber"]),
            ProfileInfoRow(icon: Icons.email, title: "Email", value: userData["email"]),
            ProfileInfoRow(icon: Icons.lock, title: "Password", value: "••••••"),
            ProfileInfoRow(icon: Icons.cake, title: "Date of Birth", value: userData["dob"]),
            ProfileInfoRow(icon: Icons.wc, title: "Gender", value: userData["gender"]),
            ProfileInfoRow(icon: Icons.home, title: "Address", value: userData["address"]),
            ProfileInfoRow(icon: Icons.notes, title: "Other Details", value: userData["otherDetails"]),
          ],
        ),
      ),
    );
  }
}
