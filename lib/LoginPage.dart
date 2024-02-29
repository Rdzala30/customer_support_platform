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
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,


          children: [
            SizedBox(width: 10.0),
            // Image widget
            Image.asset(
              'assets/CS.png',
              height: 300.0,
            ),


            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: DropdownButton<String>(
                hint: Text('Select an option'),
                value: selectedOption,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedOption = newValue;
                  });
                },
                items: [
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
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (selectedOption == 'Admin') {
                  showSnackBar(context);
                } else if (selectedOption == 'Project Manager') {
                  showSnackBar(context);
                } else if (selectedOption == 'Auditor') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AuditorPage()));
                } else if (selectedOption == 'Client') {
                  showSnackBar(context);
                } else {
                  showSnackBar(context);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 8.0),
               // Vertical padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text('Login' , style:
                TextStyle(
                  fontSize: 21,
                  color: Colors.white
                ),
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
         content: Row(
          children: [
             Icon(Icons.error_outline, color: Colors.white),
             SizedBox(width: 8.0),
              Text('You do not have permission to log in'),
      ],
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.red[900],
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0)
      ),
    ),
    );

  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
