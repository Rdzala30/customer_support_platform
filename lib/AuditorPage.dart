import 'package:flutter/material.dart';

import 'StaticData/ProjectDetailsPage.dart';
import 'StaticData/project_list.dart';

class AuditorPage extends StatelessWidget {
  const AuditorPage({Key? key});

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage('assets/profile.png') , height: 44, width: 43),
      
                SizedBox(width: 8.0),
                Text('Adhya Sharma \n Auditor' , style:
                  TextStyle(fontSize: 15),),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Align(
      
            child: ListView(
              children: [
                Align(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: ListTile(
                      title: Row(
                        children: [
                          Image(image: AssetImage('assets/CS.png') , height: 44, width: 43),
                          Text('Customer \n Support'),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      // Vertical padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.add , color: Colors.white,),
                          Text('New Project',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
      
      
                        ],
                      ),
                    ),
                  ),
                  onTap: () {

                    Navigator.pop(context);
                  },
                ), ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.cases_outlined),
                      Text('Projects'),
                    ],
                  ),
                  onTap: () {

                    Navigator.pop(context);
                  },
                ), ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person_outline_rounded),
                      Text('Project Managers'),
                    ],
                  ),
                  onTap: () {

                    Navigator.pop(context);
                  },
                ), ListTile(
                  hoverColor: Colors.black54,
                  title: Row(
                    children: [
                      Icon(Icons.person_add_alt_outlined),
                      Text('Employees'),
                    ],
                  ),
                  onTap: () {

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.settings),
                      Text('Settings'),
                    ],
                  ),
                  onTap: () {

                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
      
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    width: screenWidth * 0.4,
                    height: screenHeight  * 0.10,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("45" ,
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text("All Projects",
                          style: TextStyle(
                            fontSize: 18
                          ),
                        )
      
                      ],
                    ),
                  ), Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.10,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("24" ,
                            style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("In Progress",
                            style: TextStyle(
                                fontSize: 18
                            ),
                          )
      
                        ],
                      ),
                    ),
                  ),
      
                ],
              ), Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: screenWidth * 0.4,
                    height: screenHeight  * 0.10,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("12" ,
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Completed",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        )
      
      
                      ],
                    ),
                  ), Container(
                    width: screenWidth * 0.4,
                    height: screenHeight  * 0.10,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("9" ,
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Hold",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        )
      
      
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: screenHeight * 0.07,
                child: TabBar(
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

              Expanded(
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
      ),
    );
  }
}

class ProjectList extends StatelessWidget {
  final String? status;

  ProjectList({this.status});

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
          trailing:  Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: _getStatusColor(projects[index].status),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(projects[index].status),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjectDetailsPage(project: projects[index]),
              ),
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