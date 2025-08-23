import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'profile_info_row.dart';

class ProfileInfoCard extends StatelessWidget {
  final Map<String, dynamic> userData;

  const ProfileInfoCard({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.blue[700],
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Profile Information Rows
            ProfileInfoRow(
              icon: Icons.person,
              title: "Full Name",
              value: userData["name"],
              isEditable: true,
            ),
            ProfileInfoRow(
              icon: Icons.phone,
              title: "Phone Number",
              value: userData["PhoneNumber"],
              isEditable: true,
            ),
            ProfileInfoRow(
              icon: Icons.email,
              title: "Email Address",
              value: userData["email"],
              isEditable: true,
            ),
            ProfileInfoRow(
              icon: Icons.lock,
              title: "Password",
              value: "••••••••",
              isEditable: true,
              isPassword: true,
            ),
            ProfileInfoRow(
              icon: Icons.cake,
              title: "Date of Birth",
              value: userData["dob"],
              isEditable: true,
            ),
            ProfileInfoRow(
              icon: Icons.wc,
              title: "Gender",
              value: userData["gender"],
              isEditable: true,
            ),
            ProfileInfoRow(
              icon: Icons.home,
              title: "Address",
              value: userData["address"],
              isEditable: true,
            ),
            ProfileInfoRow(
              icon: Icons.notes,
              title: "Other Details",
              value: userData["otherDetails"],
              isEditable: true,
            ),
          ],
        ),
      ),
    );
  }
}
