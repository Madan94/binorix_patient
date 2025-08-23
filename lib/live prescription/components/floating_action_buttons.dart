import 'package:flutter/material.dart';

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Top floating action button (Grid/View toggle)
        Container(
          margin: const EdgeInsets.only(bottom: 16),
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
            child: const Icon(Icons.grid_view),
            elevation: 4,
          ),
        ),
        
        // Bottom floating action button (Chatbot/AI Assistant)
        FloatingActionButton(
          onPressed: () {
            // Open chatbot or AI assistant
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Opening AI Assistant'),
                duration: Duration(seconds: 1),
              ),
            );
          },
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          child: const Icon(Icons.smart_toy),
          elevation: 4,
        ),
      ],
    );
  }
}
