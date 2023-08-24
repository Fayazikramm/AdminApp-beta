import 'package:flutter/material.dart';

class CompletedProject {
  final String projectName;
  final String clientCompany;
  final String projectManager;
  final String startDate;
  final String endDate;
  final double projectBudget;
  final String imageUrl;

  CompletedProject({
    required this.projectName,
    required this.clientCompany,
    required this.projectManager,
    required this.startDate,
    required this.endDate,
    required this.projectBudget,
    required this.imageUrl,
  });
}

List<CompletedProject> constructionProjects = [
  CompletedProject(
    projectName: 'Side Line Bridge',
    clientCompany: 'EEP Ltd',
    projectManager: 'Jane Smith',
    startDate: '2023-09-01',
    endDate: '2023-12-31',
    projectBudget: 75000.0,
    imageUrl:
        'https://images.pexels.com/photos/1299383/pexels-photo-1299383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Dock Bridge',
    clientCompany: 'Pakistan Port',
    projectManager: 'John Doe',
    startDate: '2023-08-15',
    endDate: '2023-11-30',
    projectBudget: 60000.0,
    imageUrl:
        'https://images.pexels.com/photos/10810462/pexels-photo-10810462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Eoi Tower',
    clientCompany: 'Lime pvt ',
    projectManager: 'Alice Johnson',
    startDate: '2023-08-20',
    endDate: '2023-12-15',
    projectBudget: 90000.0,
    imageUrl:
        'https://images.pexels.com/photos/11382362/pexels-photo-11382362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Zouks Height',
    clientCompany: "Zim's Groups  ",
    projectManager: 'Michael Brown',
    startDate: '2023-09-10',
    endDate: '2023-12-10',
    projectBudget: 55000.0,
    imageUrl:
        'https://images.pexels.com/photos/11827595/pexels-photo-11827595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Project E',
    clientCompany: 'Company V',
    projectManager: 'Emily Jones',
    startDate: '2023-09-05',
    endDate: '2023-11-15',
    projectBudget: 80000.0,
    imageUrl:
        'https://images.pexels.com/photos/13795569/pexels-photo-13795569.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Project F',
    clientCompany: 'Company U',
    projectManager: 'David Wilson',
    startDate: '2023-08-25',
    endDate: '2023-11-30',
    projectBudget: 70000.0,
    imageUrl:
        'https://images.pexels.com/photos/2098624/pexels-photo-2098624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Project G',
    clientCompany: 'Company T',
    projectManager: 'Jessica Lee',
    startDate: '2023-08-28',
    endDate: '2023-12-10',
    projectBudget: 95000.0,
    imageUrl:
        'https://images.pexels.com/photos/7108779/pexels-photo-7108779.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Project H',
    clientCompany: 'Company S',
    projectManager: 'Daniel Martinez',
    startDate: '2023-09-15',
    endDate: '2023-12-15',
    projectBudget: 62000.0,
    imageUrl:
        'https://images.pexels.com/photos/1573096/pexels-photo-1573096.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  CompletedProject(
    projectName: 'Project I',
    clientCompany: 'Company R',
    projectManager: 'Sophia Adams',
    startDate: '2023-08-29',
    endDate: '2023-12-05',
    projectBudget: 71000.0,
    imageUrl:
        'https://images.pexels.com/photos/2590716/pexels-photo-2590716.jpeg',
  ),
  CompletedProject(
    projectName: 'Project J',
    clientCompany: 'Company Q',
    projectManager: 'Matthew Taylor',
    startDate: '2023-09-03',
    endDate: '2023-12-20',
    projectBudget: 88000.0,
    imageUrl:
        'https://images.pexels.com/photos/1463917/pexels-photo-1463917.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
];

class CompletedProjectDetailPage extends StatelessWidget {
  final CompletedProject project;

  CompletedProjectDetailPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(project.imageUrl),
            const SizedBox(height: 16),
            Text('Project Name: ${project.projectName}',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Text('Client Company: ${project.clientCompany}'),
            const SizedBox(height: 8),
            Text('Project Manager: ${project.projectManager}'),
            const SizedBox(height: 8),
            Text('Start Date: ${project.startDate}'),
            const SizedBox(height: 8),
            Text('End Date: ${project.endDate}'),
            const SizedBox(height: 8),
            Text('Budget: ₹${project.projectBudget.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}

class completedProjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: constructionProjects.length,
      itemBuilder: (BuildContext context, int index) {
        CompletedProject project = constructionProjects[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompletedProjectDetailPage(
                    project: project,
                  ),
                ),
              );
            },
            leading: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(project.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(project.projectName),
            subtitle: Text(
                'Start Date: ${project.startDate}\nEnd Date: ${project.endDate}'),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Budget: ₹${project.projectBudget.toStringAsFixed(2)}'),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CompOp extends StatefulWidget {
  @override
  State<CompOp> createState() => _CompOpState();
}

class _CompOpState extends State<CompOp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff47a04a),
          title: const Text("Completed Projects"),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                " Projects",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(child: completedProjectList()),
          ],
        ),
      ),
    );
  }
}
