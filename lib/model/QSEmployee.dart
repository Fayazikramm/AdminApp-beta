import 'package:flutter/material.dart';

class QsEmployee {
  final String name;
  final String designation;
  final String department;
  final int experience;
  final String imageUrl;

  QsEmployee({
    required this.name,
    required this.designation,
    required this.department,
    required this.experience,
    required this.imageUrl,
  });
}

List<QsEmployee> employees = [
  QsEmployee(
    name: 'Zakir Ibrahim',
    designation: 'Quantity Surveyor',
    department: 'QS Depart',
    experience: 5,
    imageUrl:
        'https://images.pexels.com/photos/4100672/pexels-photo-4100672.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Aijaz Khan',
    designation: 'Asst Qs',
    department: 'QS Depart',
    experience: 8,
    imageUrl:
        'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Ali Hassan',
    designation: 'Estimator',
    department: 'QS Depart',
    experience: 3,
    imageUrl:
        'https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Najeet Singh',
    designation: 'Cost Engineer',
    department: 'QS Depart',
    experience: 4,
    imageUrl:
        'https://images.pexels.com/photos/4307869/pexels-photo-4307869.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Zainab Khan',
    designation: 'Contract Manager',
    department: 'QS Depart',
    experience: 5,
    imageUrl:
        'https://images.pexels.com/photos/5615665/pexels-photo-5615665.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Omar Siddiqui',
    designation: 'Risk Manager',
    department: 'QS Depart',
    experience: 6,
    imageUrl:
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg',
  ),
  QsEmployee(
    name: 'Fatima Ali',
    designation: 'Tender Manager',
    department: 'QS Depart',
    experience: 7,
    imageUrl:
        'https://images.pexels.com/photos/6000065/pexels-photo-6000065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Ibrahim Qureshi',
    designation: 'RMS',
    department: 'QS Depart',
    experience: 4,
    imageUrl:
        'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Tahir Malik',
    designation: 'material Insp',
    department: 'QS depart',
    experience: 3,
    imageUrl:
        'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  QsEmployee(
    name: 'Amir Malik',
    designation: 'Tainee',
    department: 'QS Depart',
    experience: 0,
    imageUrl:
        'https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
];

class QsOp extends StatefulWidget {
  @override
  State<QsOp> createState() => _AdminOpState();
}

class _AdminOpState extends State<QsOp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff47a04a),
          title: Text("QS Department"),
        ),
        body: AdminEmployeeList(),
      ),
    );
  }
}

class AdminEmployeeList extends StatefulWidget {
  @override
  State<AdminEmployeeList> createState() => _AdminEmployeeListState();
}

class _AdminEmployeeListState extends State<AdminEmployeeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        QsEmployee employee = employees[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(employee.imageUrl),
            ),
            title: Text(employee.name),
            subtitle: Text('${employee.designation}, ${employee.department}'),
            trailing: Text('${employee.experience} yrs'),
          ),
        );
      },
    );
  }
}
