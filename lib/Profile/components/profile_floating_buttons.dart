import 'package:flutter/material.dart';

class ProfileFloatingButtons extends StatelessWidget {
  const ProfileFloatingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Top floating action button (Camera/Photo)
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: FloatingActionButton(
            onPressed: () {
              // Open camera or photo picker
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Open Camera'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            child: const Icon(Icons.camera_alt),
            elevation: 4,
          ),
        ),
        
        // Bottom floating action button (Share Profile)
        FloatingActionButton(
          onPressed: () {
            // Share profile information
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Share Profile'),
                duration: Duration(seconds: 1),
              ),
            );
          },
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          child: const Icon(Icons.share),
          elevation: 4,
        ),
      ],
    );
  }
}
