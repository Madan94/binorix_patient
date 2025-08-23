import 'package:flutter/material.dart';

class ManageFloatingButtons extends StatelessWidget {
  const ManageFloatingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Top floating action button (Grid/View toggle)
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: FloatingActionButton(
            onPressed: () {
              // Toggle between grid and list view
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Toggle view mode'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            child: const Icon(Icons.grid_view, size: 24),
            elevation: 6,
            mini: false,
          ),
        ),
        
        // Bottom floating action button (Chat/Support)
        FloatingActionButton(
          onPressed: () {
            // Open chat or support
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Opening Support Chat'),
                duration: Duration(seconds: 1),
              ),
            );
          },
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          child: const Icon(Icons.chat_bubble, size: 24),
          elevation: 6,
          mini: false,
        ),
      ],
    );
  }
}
