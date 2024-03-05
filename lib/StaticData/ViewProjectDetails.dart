import 'package:customer_support_platform/StaticData/project_list.dart';
import 'package:flutter/material.dart';
import '../NewProjectPage.dart';
import '../SideNavigationDrawer/NavigationDrawer.dart';

class ViewProjectDetails extends StatelessWidget {
  final Project project;

  const ViewProjectDetails({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(title: const Text("Project Management")),
          body: const Column(
            children: [
              SizedBox(
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
                    ProjectCompleteList(),
                    ProjectCompleteList(status: 'In Progress'),
                    ProjectCompleteList(status: 'Completed'),
                    ProjectCompleteList(status: 'Hold'),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewProjectPage()),
              );
            },
            child: const Icon(Icons.add),
          ),
        ));
  }
}

class ProjectCompleteList extends StatelessWidget {
  final String? status;

  const ProjectCompleteList({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    List<Project> projects =
        status != null ? getProjectsByStatus(status!) : projectList;

    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              projects[index].name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.red[50],
                  color: Colors.black54),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Started On: ${projects[index].date}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                'Manager: ${projects[index].project_manager}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                'Members : ${projects[index].members}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const Divider(),
            ],
          ),
          trailing: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: _getStatusColor(projects[index].status),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(projects[index].status),
          ),
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
