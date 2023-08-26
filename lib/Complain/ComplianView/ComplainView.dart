import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ComplainManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Complain Management',
      home: ComplaintsPage(),
    );
  }
}

class ComplaintsPage extends StatefulWidget {
  @override
  _ComplaintsPageState createState() => _ComplaintsPageState();
}

class _ComplaintsPageState extends State<ComplaintsPage> {
  final DatabaseReference complaintsRef =
      FirebaseDatabase.instance.ref().child('complain');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complaints Management'),
      backgroundColor: Color.fromARGB(255, 71, 160, 74),
      ),
     
      body: StreamBuilder(
        stream: complaintsRef.onValue,
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data == null) {
            return CircularProgressIndicator();
          }

          final complaintsMap = (snapshot.data!.snapshot.value as Map?) ?? {};

          final complain = complaintsMap.entries
              .map((entry) => Complain.fromMap(entry.key, entry.value))
              .toList();

          return ListView.builder(
            itemCount: complain.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(complain[index].description),
                subtitle: Text('Department: ${complain[index].departmentName}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ComplaintDetailsPage(complaint: complain[index]),
                    ),
                  );
                },
                trailing: ElevatedButton(
                  onPressed: () {
                    final complaint = complain[index];
                    if (complaint.status != 'resolved') {
                      complaintsRef.child(complaint.id).update({
                        'status': 'resolved',
                      });
                    }
                  },
                  child: Text('Solve'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ComplaintDetailsPage extends StatelessWidget {
  final Complain complaint;

  ComplaintDetailsPage({required this.complaint});
  
  get complaintsRef => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complaint Details'),
      
      backgroundColor: Color.fromARGB(255, 71, 160, 74),
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Employee: ${complaint.employeeName}'),
            Text('Department: ${complaint.departmentName}'),
            SizedBox(height: 20),
            Text('Description: ${complaint.description}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //
                    complaintsRef.child(complaint.id).remove();
                    Navigator.pop(context); 
                  },
                  child: Text('Delete'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (complaint.status != 'resolved') {
                      complaintsRef.child(complaint.id).update({
                        'status': 'resolved',
                      });
                    }
                  },
                  child: Text('Solve'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Complain {
  final String departmentName;
  final String employeeName;
  final String description;
  final String status;
  final String id;

  Complain({
    required this.departmentName,
    required this.employeeName,
    required this.description,
    required this.status,
    required this.id,
  });

  factory Complain.fromMap(String id, Map<dynamic, dynamic> data) {
    return Complain(
      departmentName: data['department'] ?? '',
      employeeName: data['employee'] ?? '',
      description: data['description'] ?? '',
      status: data['status'] ?? '',
      id: id,
    );
  }
}
