import 'package:customer_support_platform/SideNavigationDrawer/NavigationDrawer.dart';
import 'package:customer_support_platform/StaticData/ViewProjectDetails.dart';
import 'package:flutter/material.dart';
import 'StaticData/ProjectDetailsPage.dart';
import 'StaticData/project_list.dart';

class AuditorPage extends StatelessWidget {
  const AuditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  height: 35,
                  width: screenWidth * 0.40,
                  child: Row(children: [
                    const Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ]),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage('assets/profile.png'),
                      height: 44,
                      width: 43,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Adhya Sharma \n Auditor',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: const SideNavigationDrawer(),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(25),
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.10,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "45",
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "All Projects",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.10,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "24",
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "In Progress",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.10,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Completed",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.10,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "9",
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hold",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.07,
              child: const TabBar(
                tabs: [
                  Tab(
                    text: 'All Projects',
                  ),
                  Tab(
                    text: 'In Progress',
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                  Tab(
                    text: 'Hold',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ProjectList(),
                  ProjectList(status: 'In Progress'),
                  ProjectList(status: 'Completed'),
                  ProjectList(status: 'Hold'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectList extends StatelessWidget {
  final String? status;

  const ProjectList({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    List<Project> projects =
    status != null ? getProjectsByStatus(status!) : projectList;

    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(projects[index].name),
          subtitle: Text('Started On: ${projects[index].date}'),
          trailing: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: _getStatusColor(projects[index].status),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(projects[index].status),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Choose an option"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProjectDetailsPage(project: projects[index]),
                          ),
                        );
                      },
                      child: const Text("Edit Details"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ViewProjectDetails(project: projects[index]),
                          ),
                        );
                      },
                      child: const Text("View Complete Details"),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  List<Project> getProjectsByStatus(String status) {
    return projectList.where((project) => project.status == status).toList();
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'In Progress':
        return Colors.green;
      case 'Completed':
        return Colors.red;
      case 'Hold':
        return Colors.black54;
      default:
        return Colors.orangeAccent;
    }
  }
}
