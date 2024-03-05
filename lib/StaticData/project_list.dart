class Project {
  final String name;
  final String date;
  final String status;
  final String project_manager;
  final int members;

  Project(
      {required this.name,
        required this.date,
        required this.status,
        required this.project_manager,
        required this.members});
}

final List<Project> projectList = [
  Project(
      name: 'Food on time',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Dipa Majumdar',
      members: 5),
  Project(
      name: 'Sentiment analysis',
      date: '2022-03-20',
      status: 'Hold',
      project_manager: 'Rohit Shah',
      members: 8),
  Project(
      name: 'Healthcare Management',
      date: '2022-04-10',
      status: 'Pending',
      project_manager: 'Chintak Patel',
      members: 6),
  Project(
      name: 'Biometric attendance system',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Dipa Majumdar',
      members: 7),
  Project(
      name: 'Android chat bot',
      date: '2022-08-12',
      status: 'Completed',
      project_manager: 'Rohit Shah',
      members: 10),
  Project(
      name: 'Canteen Automation system',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Chintak Patel',
      members: 4),
  Project(
      name: 'Encryption',
      date: '2022-03-20',
      status: 'Completed',
      project_manager: 'Dipa Majumdar',
      members: 9),
  Project(
      name: 'Library management',
      date: '2022-04-10',
      status: 'Pending',
      project_manager: 'Rohit Shah',
      members: 6),
  Project(
      name: 'Cyber security',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Chintak Patel',
      members: 8),
  Project(
      name: 'SMS spam filtering',
      date: '2022-08-12',
      status: 'Hold',
      project_manager: 'Dipa Majumdar',
      members: 5),
  Project(
      name: 'Android local geofence system',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Rohit Shah',
      members: 7),
  Project(
      name: 'Computing',
      date: '2022-03-20',
      status: 'Completed',
      project_manager: 'Chintak Patel',
      members: 6),
  Project(
      name: 'Internet of things',
      date: '2022-04-10',
      status: 'Pending',
      project_manager: 'Dipa Majumdar',
      members: 8),
  Project(
      name: 'Artificial intelligence',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Rohit Shah',
      members: 5),
  Project(
      name: 'Banking bot project',
      date: '2022-08-12',
      status: 'Completed',
      project_manager: 'Chintak Patel',
      members: 9),
  Project(
      name: 'Election analysis',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Dipa Majumdar',
      members: 7),
  Project(
      name: 'Employee tracking system',
      date: '2022-03-20',
      status: 'Completed',
      project_manager: 'Rohit Shah',
      members: 8),
  Project(
      name: 'Forecasting',
      date: '2022-04-10',
      status: 'Pending',
      project_manager: 'Chintak Patel',
      members: 6),
  Project(
      name: 'Automatic answer checker',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Dipa Majumdar',
      members: 5),
  Project(
      name: 'Face detection',
      date: '2022-08-12',
      status: 'Hold',
      project_manager: 'Rohit Shah',
      members: 10),
  Project(
      name: 'Movie recommendation system',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Chintak Patel',
      members: 7),
  Project(
      name: 'Android patient Tracker',
      date: '2022-03-20',
      status: 'Completed',
      project_manager: 'Dipa Majumdar',
      members: 9),
  Project(
      name: 'Big data projects',
      date: '2022-04-10',
      status: 'Pending',
      project_manager: 'Rohit Shah',
      members: 6),
  Project(
      name: 'Traffic management system',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Chintak Patel',
      members: 8),
  Project(
      name: 'Internet of things',
      date: '2022-08-12',
      status: 'Completed',
      project_manager: 'Dipa Majumdar',
      members: 5),
  Project(
      name: 'Face detection',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Rohit Shah',
      members: 7),
  Project(
      name: 'Android local geofence system',
      date: '2022-03-20',
      status: 'Completed',
      project_manager: 'Chintak Patel',
      members: 8),
  Project(
      name: 'Healthcare Management',
      date: '2022-04-10',
      status: 'Pending',
      project_manager: 'Dipa Majumdar',
      members: 6),
  Project(
      name: 'Cyber security',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Rohit Shah',
      members: 5),
  Project(
      name: 'Election analysis',
      date: '2022-08-12',
      status: 'Hold',
      project_manager: 'Chintak Patel',
      members: 10),
  Project(
      name: 'Library management',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Dipa Majumdar',
      members: 7),
  Project(
      name: 'Biometric attendance system',
      date: '2022-03-20',
      status: 'Completed',
      project_manager: 'Rohit Shah',
      members: 9),
  Project(
      name: 'Android chat bot',
      date: '2022-04-10',
      status: 'Pending',
      project_manager: 'Chintak Patel',
      members: 6),
  Project(
      name: 'Computing',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Dipa Majumdar',
      members: 8),
  Project(
      name: 'Movie recommendation system',
      date: '2022-08-12',
      status: 'Completed',
      project_manager: 'Rohit Shah',
      members: 5),
  Project(
      name: 'Artificial intelligence',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Chintak Patel',
      members: 7),
  Project(
      name: 'Banking bot project',
      date: '2022-03-20',
      status: 'Completed',
      project_manager: 'Dipa Majumdar',
      members: 8),
  Project(
      name: 'Image Encryption System',
      date: '2022-04-10',
      status: 'Hold',
      project_manager: 'Rohit Shah',
      members: 6),
  Project(
      name: 'Rapid App Revolution',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Chintak Patel',
      members: 8),
  Project(
      name: 'Movie recommendation system',
      date: '2022-08-12',
      status: 'Hold',
      project_manager: 'Dipa Majumdar',
      members: 5),
  Project(
      name: 'Biomedical Data Mining',
      date: '2022-02-15',
      status: 'In Progress',
      project_manager: 'Rohit Shah',
      members: 7),
  Project(
      name: 'Twitter Sentiment Analysis',
      date: '2022-03-20',
      status: 'Hold',
      project_manager: 'Chintak Patel',
      members: 8),
  Project(
      name: 'Detect phishing attempts',
      date: '2022-04-10',
      status: 'In Progress',
      project_manager: 'Dipa Majumdar',
      members: 6),
  Project(
      name: 'Credit scoring system',
      date: '2022-07-05',
      status: 'In Progress',
      project_manager: 'Rohit Shah',
      members: 8),
  Project(
      name: 'Stock price prediction system',
      date: '2022-08-12',
      status: 'Hold',
      project_manager: 'Chintak Patel',
      members: 5),
];
