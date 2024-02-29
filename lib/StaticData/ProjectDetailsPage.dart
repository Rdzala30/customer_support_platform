import 'package:customer_support_platform/StaticData/project_list.dart';
import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  ProjectDetailsPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Started On: ${project.date}'),
            Text('Status: ${project.status}'),
            Text('Members: ${project.members}'),
            Text('Project Manager: ${project.project_manager}'),

          ],
        ),
      ),
    );
  }
}
