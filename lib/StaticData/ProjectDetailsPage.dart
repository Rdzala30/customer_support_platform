import '../Project%20Tabs/EscalationMatrix.dart';
import 'package:customer_support_platform/Project%20Tabs/ScopeStack.dart';
import 'package:customer_support_platform/SideNavigationDrawer/NavigationDrawer.dart';
import 'package:customer_support_platform/StaticData/project_list.dart';
import 'package:flutter/material.dart';
import '../Project Tabs/ProjectOverview.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Align(
            child: Row(
              children: [
                Text(project.name),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      'Members: ${project.members}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Member Added Successfully'),
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          Text(
                            'Invite  ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.person_add_alt_outlined),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: const SideNavigationDrawer(),
        body: const Column(
          children: [
            SizedBox(
              child: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(child: Text('Project Overview')),
                  Tab(child: Text('Scope & Stack')),
                  Tab(child: Text('Escalation Matrix')),
                  Tab(child: Text('Version History')),
                  Tab(child: Text('Files')),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1
                  Center(child: ProjectOverview()),
                  // Tab 2
                  Center(child: ScopeStack()),
                  // Tab 3
                  EscalationMatrix(),
                  //Tab 4
                  Center(child: Text('Version History content')),
                  //  Tab 5
                  Center(child: Text('Files Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
