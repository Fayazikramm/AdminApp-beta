import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

final List<gridList> GridList = [
  gridList(
    projectName: 'Side Line Bridge',
    clientCompany: 'EEP Ltd',
    directorName: 'Jane Smith',
    startDate: '2023-09-01',
    endDate: '2023-12-31',
    budget: "75000.0",
    imageUrl:
        'https://images.pexels.com/photos/1299383/pexels-photo-1299383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  gridList(
    projectName: 'Dock Bridge',
    clientCompany: 'Pakistan Port',
    directorName: 'John Doe',
    startDate: '2023-08-15',
    endDate: '2023-11-30',
    budget: "60000.0",
    imageUrl:
        'https://images.pexels.com/photos/10810462/pexels-photo-10810462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  gridList(
    projectName: 'Eoi Tower',
    clientCompany: 'Lime pvt ',
    directorName: 'Alice Johnson',
    startDate: '2023-08-20',
    endDate: '2023-12-15',
    budget: "90000.0",
    imageUrl:
        'https://images.pexels.com/photos/11382362/pexels-photo-11382362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  gridList(
    projectName: 'Zouks Height',
    clientCompany: "Zim's Groups  ",
    directorName: 'Michael Brown',
    startDate: '2023-09-10',
    endDate: '2023-12-10',
    budget: "55000.0",
    imageUrl:
        'https://images.pexels.com/photos/11827595/pexels-photo-11827595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
];

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: GridList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProjectDetailsPage(project: GridList[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(GridList[index].projectName),
                  Text('Budget: ${GridList[index].budget}'),
                  Text('Client: ${GridList[index].clientCompany}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class gridList {
  final String projectName;
  final String budget;
  final String clientCompany;
  final String directorName;
  final String startDate;
  final String endDate;
  final String imageUrl;

  gridList({
    required this.projectName,
    required this.budget,
    required this.clientCompany,
    required this.directorName,
    required this.startDate,
    required this.endDate,
    required this.imageUrl,
  });
}

class ProjectDetailsPage extends StatelessWidget {
  final gridList project;

  ProjectDetailsPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details',
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 71, 160, 74),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(project.imageUrl),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text('gridList Name: ${project.projectName}'),
            ),
            Text('Director: ${project.directorName}'),
            Text('Budget: ${project.budget}'),
            Text('Client: ${project.clientCompany}'),
            Text('Start Date: ${project.startDate}'),
            Text('End Date: ${project.endDate}'),
          ],
        ),
      ),
    );
  }
}
