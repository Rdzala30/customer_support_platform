import 'package:flutter/material.dart';
import 'AuditorPage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(width: 10.0),
            Image.asset(
              'assets/CS.png',
              height: 300.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: DropdownButton<String>(
                hint: const Text('Select an option for login'),
                value: selectedOption,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedOption = newValue;
                  });
                },
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Admin',
                    child: Text('Admin'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Project Manager',
                    child: Text('Project Manager'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Auditor',
                    child: Text('Auditor'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Client',
                    child: Text('Client'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (selectedOption == 'Admin') {
                  showSnackBar(context);
                } else if (selectedOption == 'Project Manager') {
                  showSnackBar(context);
                } else if (selectedOption == 'Auditor') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AuditorPage()));
                } else if (selectedOption == 'Client') {
                  showSnackBar(context);
                } else {
                  showSnackBar(context);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Row(
          children: [
            Icon(Icons.error_outline, color: Colors.white),
            SizedBox(width: 8.0),
            Text('You do not have permission to log in'),
          ],
        ),
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red[900],
        behavior: SnackBarBehavior.floating,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LoginScreen(),
  ));
}
