import 'package:flutter/material.dart';

class ItEmployee {
  final String name;
  final String designation;
  final String department;
  final int experience;
  final String imageUrl;

  ItEmployee({
    required this.name,
    required this.designation,
    required this.department,
    required this.experience,
    required this.imageUrl,
  });
}

List<ItEmployee> employees = [
  ItEmployee(
    name: 'Alisha Ahmed',
    designation: 'Software Engineer',
    department: 'IT Department',
    experience: 5,
    imageUrl:
        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Aijaz Khan',
    designation: 'Junior Software Engineer',
    department: 'IT Department',
    experience: 8,
    imageUrl:
        'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Ali Hassan',
    designation: 'UX Designer',
    department: 'IT Department',
    experience: 3,
    imageUrl:
        'https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Najeet Singh',
    designation: 'UI Designer',
    department: 'IT Department',
    experience: 4,
    imageUrl:
        'https://images.pexels.com/photos/4307869/pexels-photo-4307869.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Zainab Khan',
    designation: 'Data Analyst',
    department: 'IT Department',
    experience: 2,
    imageUrl:
        'https://images.pexels.com/photos/5615665/pexels-photo-5615665.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Omar Siddiqui',
    designation: 'Data Engineer',
    department: 'IT Department',
    experience: 6,
    imageUrl:
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg',
  ),
  ItEmployee(
    name: 'Fatima Ali',
    designation: 'Jr Data Engineer',
    department: 'IT Department',
    experience: 7,
    imageUrl:
        'https://images.pexels.com/photos/6000065/pexels-photo-6000065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Ibrahim Qureshi',
    designation: 'Front-end Developer',
    department: 'IT Departmet',
    experience: 4,
    imageUrl:
        'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Tahir Malik',
    designation: 'Content Writer',
    department: 'Content',
    experience: 3,
    imageUrl:
        'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  ItEmployee(
    name: 'Amir Malik',
    designation: 'CCTV Eng',
    department: 'IT Department',
    experience: 5,
    imageUrl:
        'https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
];

class ItOp extends StatefulWidget {
  @override
  State<ItOp> createState() => _ItOpState();
}

class _ItOpState extends State<ItOp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff47a04a),
          title: const Text("IT Department"),
        ),
        body: ItEmployeeList(),
      ),
    );
  }
}

class ItEmployeeList extends StatefulWidget {
  @override
  State<ItEmployeeList> createState() => _ItEmployeeListState();
}

class _ItEmployeeListState extends State<ItEmployeeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        ItEmployee employee = employees[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
