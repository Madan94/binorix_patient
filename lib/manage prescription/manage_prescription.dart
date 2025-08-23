import 'package:flutter/material.dart';
import 'components/prescription_table_item.dart';
import 'components/manage_stats_card.dart';
import 'components/manage_floating_buttons.dart';

class ManagePrescription extends StatefulWidget {
  const ManagePrescription({Key? key}) : super(key: key);

  @override
  State<ManagePrescription> createState() => _ManagePrescriptionState();
}

class _ManagePrescriptionState extends State<ManagePrescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Manage Prescriptions',
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
          // Header with title and action buttons
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                      child: const Text('Contact Us'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                      child: const Text('Settings'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Search and filter section
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey[600], size: 20),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search prescriptions...',
                                  hintStyle: TextStyle(color: Colors.grey[500]),
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.blue[700],
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          // Prescriptions list with mobile-friendly layout
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _prescriptions.length,
              itemBuilder: (context, index) {
                return PrescriptionTableItem(
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
                  child: ManageStatsCard(
                    title: 'Total Completed',
                    value: '2',
                    icon: Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ManageStatsCard(
                    title: 'Total Patients',
                    value: '1',
                    icon: Icons.people,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ManageStatsCard(
                    title: 'Total Medicines',
                    value: '6',
                    icon: Icons.medication,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: const ManageFloatingButtons(),
    );
  }

  // Sample prescription data
  final List<Map<String, dynamic>> _prescriptions = [
    {
      'id': 'ZRP8037',
      'dateTime': '8/22/2025, 11:28:41 AM',
      'patientName': 'prieyan',
      'phone': '9360179308',
      'email': 'prieyan@gmail.com',
      'medicines': [
        {'name': 'Paracetamol', 'qty': '23', 'note': 'Take after food'},
        {'name': 'Amoxicillin', 'qty': '23', 'note': 'Take after food'},
        {'name': 'Aspirin', 'qty': '23', 'note': 'Take after food'},
        {'name': 'Ciprofloxacin', 'qty': '23', 'note': 'Take before food'},
        {'name': 'Azithromycin', 'qty': '23', 'note': 'Take after food'},
      ],
      'timing': 'Morning',
      'foodIntake': 'Mixed',
      'doctorsAdvice': 'Take Care ma',
      'status': 'Completed',
      'lastUpdated': 'Updated: 11:28:41 AM',
    },
    {
      'id': 'ZRP4246',
      'dateTime': '8/22/2025, 12:35:06 PM',
      'patientName': 'prieyan',
      'phone': '9360179308',
      'email': 'prieyan@gmail.com',
      'medicines': [
        {'name': 'Paracetamol', 'qty': '12', 'note': 'Take after food'},
      ],
      'timing': 'Morning',
      'foodIntake': 'After Food',
      'doctorsAdvice': 'Taje Care',
      'status': 'Completed',
      'lastUpdated': 'Updated: 12:35:06 PM',
    },
  ];
}
