

class Project {
  final String name;
  final String date;
  final String status;
  final String project_manager;
  final int members;


  Project({required this.name, required this.date, required this.status, required this.project_manager, required this.members});
}

final List<Project> projectList = [
  Project(name: 'AppXcelerate', date: '2022-02-15', status: 'In Progress', project_manager:  'Dipa Majumdar', members: 5 ),
  Project(name: 'SwiftAppHub', date: '2022-03-20', status: 'Hold', project_manager:   'Rohit Shah', members: 8 ),
  Project(name: 'InnovateApp360', date: '2022-04-10', status: 'Pending', project_manager:   'Chintak Patel', members: 6 ),
  Project(name: 'CodeCraftedApps', date: '2022-07-05', status: 'In Progress', project_manager:   'Dipa Majumdar', members: 7 ),
  Project(name: 'AppSphere', date: '2022-08-12', status: 'Completed', project_manager:   'Rohit Shah', members: 10 ),
  Project(name: 'TechLaunchPad', date: '2022-02-15', status: 'In Progress', project_manager:   'Chintak Patel', members: 4 ),
  Project(name: 'AppInnovator', date: '2022-03-20', status: 'Completed', project_manager:   'Dipa Majumdar', members: 9 ),
  Project(name: 'RapidAppFlow', date: '2022-04-10', status: 'Pending', project_manager:   'Rohit Shah', members: 6 ),
  Project(name: 'AppSyncPro', date: '2022-07-05', status: 'In Progress', project_manager:   'Chintak Patel', members: 8 ),
  Project(name: 'DevAppEvolve', date: '2022-08-12', status: 'Hold', project_manager:   'Dipa Majumdar', members: 5 ),
  Project(name: 'AppPioneer', date: '2022-02-15', status: 'In Progress', project_manager:   'Rohit Shah', members: 7 ),
  Project(name: 'NexusAppForge', date: '2022-03-20', status: 'Completed', project_manager:   'Chintak Patel', members: 6 ),
  Project(name: 'AppZenith', date: '2022-04-10', status: 'Pending', project_manager:   'Dipa Majumdar', members: 8 ),
  Project(name: 'AppCatalyst', date: '2022-07-05', status: 'In Progress', project_manager:   'Rohit Shah', members: 5 ),
  Project(name: 'InnovateAppHub', date: '2022-08-12', status: 'Completed', project_manager:   'Chintak Patel', members: 9 ),
  Project(name: 'AppMatrixX', date: '2022-02-15', status: 'In Progress', project_manager:   'Dipa Majumdar', members: 7 ),
  Project(name: 'AppHarmony', date: '2022-03-20', status: 'Completed', project_manager:   'Rohit Shah', members: 8 ),
  Project(name: 'CodeSphereApp', date: '2022-04-10', status: 'Pending', project_manager:   'Chintak Patel', members: 6 ),
  Project(name: 'TechAppVelocity', date: '2022-07-05', status: 'In Progress', project_manager:   'Dipa Majumdar', members: 5 ),
  Project(name: 'AppRevolution', date: '2022-08-12', status: 'Hold', project_manager:   'Rohit Shah', members: 10 ),
  Project(name: 'AppCatalystX', date: '2022-02-15', status: 'In Progress', project_manager:   'Chintak Patel', members: 7 ),
  Project(name: 'AppCodeBurst', date: '2022-03-20', status: 'Completed', project_manager:   'Dipa Majumdar', members: 9 ),
  Project(name: 'AppHarborX', date: '2022-04-10', status: 'Pending', project_manager:   'Rohit Shah', members: 6 ),
  Project(name: 'RapidAppNex', date: '2022-07-05', status: 'In Progress', project_manager:   'Chintak Patel', members: 8 ),
  Project(name: 'AppSphereX', date: '2022-08-12', status: 'Completed', project_manager:   'Dipa Majumdar', members: 5 ),
  Project(name: 'AppSyncXpress', date: '2022-02-15', status: 'In Progress', project_manager:   'Rohit Shah', members: 7 ),
  Project(name: 'DevAppHarbor', date: '2022-03-20', status: 'Completed', project_manager:   'Chintak Patel', members: 8 ),
  Project(name: 'AppInferno', date: '2022-04-10', status: 'Pending', project_manager:   'Dipa Majumdar', members: 6 ),
  Project(name: 'AppVelocityX', date: '2022-07-05', status: 'In Progress', project_manager:   'Rohit Shah', members: 5 ),
  Project(name: 'AppCatalystXpress', date: '2022-08-12', status: 'Hold', project_manager:   'Chintak Patel', members: 10 ),
  Project(name: 'AppForgeX', date: '2022-02-15', status: 'In Progress', project_manager:   'Dipa Majumdar', members: 7 ),
  Project(name: 'AppMatrixXpress', date: '2022-03-20', status: 'Completed', project_manager:   'Rohit Shah', members: 9 ),
  Project(name: 'AppCodeFlow', date: '2022-04-10', status: 'Pending', project_manager:   'Chintak Patel', members: 6 ),
  Project(name: 'AppTechHarbor', date: '2022-07-05', status: 'In Progress', project_manager:   'Dipa Majumdar', members: 8 ),
  Project(name: 'AppInnovateX', date: '2022-08-12', status: 'Completed', project_manager:   'Rohit Shah', members: 5 ),
  Project(name: 'AppPulseX', date: '2022-02-15', status: 'In Progress', project_manager:   'Chintak Patel', members: 7 ),
  Project(name: 'AppCatalystXpress', date: '2022-03-20', status: 'Completed', project_manager:   'Dipa Majumdar', members: 8 ),
  Project(name: 'AppSyncHarbor', date: '2022-04-10', status: 'In Progress', project_manager:   'Rohit Shah', members: 6 ),
  Project(name: 'RapidAppRevolution', date: '2022-07-05', status: 'In Progress', project_manager:   'Chintak Patel', members: 8 ),
  Project(name: 'AppHarmonyX', date: '2022-08-12', status: 'In Progress', project_manager:   'Dipa Majumdar', members: 5 ),
  Project(name: 'AppSphereEvolve', date: '2022-02-15', status: 'In Progress', project_manager:   'Rohit Shah', members: 7 ),
  Project(name: 'AppSyncInnovate', date: '2022-03-20', status: 'In Progress', project_manager:   'Chintak Patel', members: 8 ),
  Project(name: 'DevAppMatrix', date: '2022-04-10', status: 'In Progress', project_manager:   'Dipa Majumdar', members: 6 ),
  Project(name: 'AppRevolutionX', date: '2022-07-05', status: 'In Progress', project_manager:   'Rohit Shah', members: 8 ),
  Project(name: 'AppInnovate360X', date: '2022-08-12', status: 'In Progress', project_manager:   'Chintak Patel', members: 5 ),

];

