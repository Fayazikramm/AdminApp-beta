

import 'package:admin_app/firebase/util.dart';
import 'package:admin_app/login/signup/RoundButton.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ComplainRegistrationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Complain Box"),
              backgroundColor: const Color(0xff47a04a),
            ),
            body: ComplainForm()),
      ),
    );
  }
}

class ComplainForm extends StatefulWidget {
  @override
  _ComplainFormState createState() => _ComplainFormState();
}

class _ComplainFormState extends State<ComplainForm> {
  String departmentName = '';
  String employeeName = '';
  String description = '';
  final databaseRefer = FirebaseDatabase.instance.ref('complain');
  bool Loading = false;
  String validationError = '';

  @override
  void dispose() {
    
    super.dispose();
    departmentName = '';
    employeeName = '';
    description = '';
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            onChanged: (value) {
              setState(() {
                departmentName = value;
                validationError = '';
              });
            },
            decoration: const InputDecoration(
                labelText: 'Department Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            onChanged: (value) {
              setState(() {
                employeeName = value;
                validationError = '';
              });
            },
            decoration: const InputDecoration(
                labelText: 'Employee Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            onChanged: (value) {
              setState(() {
                description = value;
                validationError = '';
              });
            },
            decoration: const InputDecoration(
                labelText: 'Complain Description',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
        ),
        Roundbutton(
            tittle: "Submit",
            loading: Loading,
            onTap: () {
              if (departmentName.isEmpty ||
                  employeeName.isEmpty ||
                  description.isEmpty) {
                setState(() {
                  validationError = 'All fields are required';
                });
                return;
              }

              setState(() {
                Loading = true;
              });

              databaseRefer.child('Complaints')
                ..set({
                  'department': departmentName,

                  'employee': employeeName,
                  'description': description,
                  'status': 'pending', 
                }).then((value) {
                  setState(() {
                    Loading = false;
                  });

                  utils().toastMessage("Complain Submited");
                }).onError((error, stackTrace) {
                  utils().toastMessage(error.toString());
                  setState(() {
                    Loading = false;
                  });
                });

              setState(() {
                departmentName = '';
                employeeName = '';
                description = '';
              });
            })
      ],
    );
  }
}
