import 'package:flutter/material.dart';
import 'package:admin_app/model/CProjects.dart';

class Completed1 extends StatelessWidget {
  final int projectIndex;

  const Completed1({required this.projectIndex});

  @override
  Widget build(BuildContext context) {
    final CompletedProject project = constructionProjects[projectIndex];

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 252),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Image.network(
                  project.imageUrl,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 05,
                ),
                 Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 05),
                      child: Text(project.projectName),
                    )
                  ],
                ),
               Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 05),
                      child: Text(
                        project.endDate,
                        style: TextStyle(fontSize: 10, color: Colors.black45),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black45,
                    )
                  ],
                ),
                 Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 05),
                      child: Text(
                        project.projectBudget.toString(),
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    Icon(
                      Icons.attach_money,
                      color: Colors.black45,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 180,
          width: 160,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Image.asset(
                'assets/vila.jpg',
                height: 106,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 05,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 05),
                    child: Text("The premier Villa"),
                  )
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 05),
                    child: Text(
                      "Down town hill calfornia",
                      style: TextStyle(fontSize: 10, color: Colors.black45),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompletedProjectDetailPage(
                                  project: project)));
                    },
                    child: const Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 05),
                    child: Text(
                      "4,567",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  Icon(
                    Icons.attach_money,
                    color: Colors.black45,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
