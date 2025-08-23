import 'package:flutter/material.dart';
import '../../../../constants.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: kPrimaryColor,
      child: const Icon(Icons.person, size: 50, color: Colors.white),
    );
  }
}
