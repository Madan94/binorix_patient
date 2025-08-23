import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'prescription_list_item.dart';
import 'prescription_stats_card.dart';
import 'floating_action_buttons.dart';

class LivePrescription extends StatefulWidget {
  const LivePrescription({Key? key}) : super(key: key);

  @override
  State<LivePrescription> createState() => _LivePrescriptionState();
}

class _LivePrescriptionState extends State<LivePrescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Live Prescriptions',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black87),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue[100],
            child: const Icon(Icons.person, color: Colors.blue, size: 20),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          // Header with title and contact buttons
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
              children: [
                const Text(
                  'Prescripto',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Contact Us'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Connect Wallet'),
                ),
              ],
            ),
          ),
          
          // Prescriptions list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _prescriptions.length,
              itemBuilder: (context, index) {
                return PrescriptionListItem(
                  prescription: _prescriptions[index],
                );
              },
            ),
          ),
          
          // Statistics cards
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: PrescriptionStatsCard(
                    title: 'Currently Processing',
                    value: '22',
                    icon: Icons.waves,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: PrescriptionStatsCard(
                    title: 'Active Patients',
                    value: '2',
                    icon: Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: PrescriptionStatsCard(
                    title: 'Total Medicines',
                    value: '25',
                    icon: Icons.medication,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButtons(),
    );
  }

  // Sample prescription data
  final List<Map<String, dynamic>> _prescriptions = [
    {
      'id': 'ZRP8442',
      'dateTime': '8/23/2025, 4:07:53 AM',
      'patientName': 'prieyan',
      'phone': '9360179308',
      'email': 'prieyan@gmail.com',
      'medicine': 'Paracetamol',
      'quantity': 'Qty: 12',
      'note': 'Take after food',
      'dosage': 'Morning',
      'additionalNotes': 'Take Care',
      'status': 'Processing',
      'lastUpdated': 'Updated: 4:07:53 AM',
    },
    {
      'id': 'ZRP8443',
      'dateTime': '8/23/2025, 4:08:15 AM',
      'patientName': 'prieyan',
      'phone': '9360179308',
      'email': 'prieyan@gmail.com',
      'medicine': 'Ibuprofen',
      'quantity': 'Qty: 8',
      'note': 'Take with food',
      'dosage': 'Evening',
      'additionalNotes': 'Take Care Ma',
      'status': 'Processing',
      'lastUpdated': 'Updated: 4:08:15 AM',
    },
    {
      'id': 'ZRP8444',
      'dateTime': '8/23/2025, 4:09:00 AM',
      'patientName': 'prieyan',
      'phone': '9360179308',
      'email': 'prieyan@gmail.com',
      'medicine': 'Vitamin C',
      'quantity': 'Qty: 15',
      'note': 'Take daily',
      'dosage': 'Morning',
      'additionalNotes': 'take care',
      'status': 'Processing',
      'lastUpdated': 'Updated: 4:09:00 AM',
    },
  ];
}
