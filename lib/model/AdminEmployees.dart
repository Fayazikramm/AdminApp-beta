import 'package:flutter/material.dart';

class AdminEmployee {
  final String name;
  final String designation;
  final String department;
  final int experience;
  final String imageUrl;

  AdminEmployee({
    required this.name,
    required this.designation,
    required this.department,
    required this.experience,
    required this.imageUrl,
  });
}

List<AdminEmployee> employees = [
  AdminEmployee(
    name: 'Touseef Shamsi',
    designation: 'Office manager',
    department: 'Admin Depart',
    experience: 5,
    imageUrl:
        'https://images.pexels.com/photos/4100672/pexels-photo-4100672.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  AdminEmployee(
    name: 'Aijaz Khan',
    designation: 'Administrative Asst',
    department: 'Admin Depart',
    experience: 8,
    imageUrl:
        'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  AdminEmployee(
    name: 'Ali Hassan',
    designation: 'Data Entry Clerk',
    department: 'Admin Depart',
    experience: 3,
    imageUrl:
        'https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  AdminEmployee(
    name: 'Najeet Singh',
    designation: 'HR Asst',
    department: 'Admin Depart',
    experience: 4,
    imageUrl:
        'https://images.pexels.com/photos/4307869/pexels-photo-4307869.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  AdminEmployee(
    name: 'Zainab Khan',
    designation: 'Receptionist',
    department: 'Admin Depart',
    experience: 2,
    imageUrl:
        'https://images.pexels.com/photos/5615665/pexels-photo-5615665.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  AdminEmployee(
    name: 'Omar Siddiqui',
    designation: 'Purchasing Asst',
    department: 'Admin Depart',
    experience: 6,
    imageUrl:
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg',
  ),
  AdminEmployee(
    name: 'Fatima Ali',
    designation: 'Legal Assit',
    department: 'Admin Depart',
    experience: 7,
    imageUrl:
        'https://images.pexels.com/photos/6000065/pexels-photo-6000065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  AdminEmployee(
    name: 'Ibrahim Qureshi',
    designation: 'RMS',
    department: 'Admin Depart',
    experience: 4,
    imageUrl:
        'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
AdminEmployee(
    name: 'Tahir Malik',
    designation: 'Health and Safety',
    department: 'Admin depart',
    experience: 3,
    imageUrl:
        'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  AdminEmployee(
    name: 'Amir Malik',
    designation: 'Tainee',
    department: 'Admin Depart',
    experience: 0,
    imageUrl:
        'https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
];

class AdminOp extends StatefulWidget {
  @override
  State<AdminOp> createState() => _AdminOpState();
}

class _AdminOpState extends State<AdminOp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff47a04a),
          title: Text("Admin Department"),
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
        AdminEmployee employee = employees[index];
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
