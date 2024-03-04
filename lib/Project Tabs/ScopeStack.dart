import 'package:flutter/material.dart';

class ScopeStack extends StatefulWidget {
  const ScopeStack({Key? key}) : super(key: key);

  @override
  _ScopeStackState createState() => _ScopeStackState();
}

class _ScopeStackState extends State<ScopeStack> {
  String selectedTechnology = "Mobile app"; // Default value
  TextEditingController textFieldController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Heading
              Text(
                "Select Project Technology's  ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              // Dropdown with 4 options
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownButton<String>(
                  value: selectedTechnology,
                  items: [
                    DropdownMenuItem(
                      value: "Backend",
                      child: Text("Backend"),
                    ),
                    DropdownMenuItem(
                      value: "Front-end",
                      child: Text("Front-end"),
                    ),
                    DropdownMenuItem(
                      value: "Mobile app",
                      child: Text("Mobile app"),
                    ),
                    DropdownMenuItem(
                      value: "Database",
                      child: Text("Database"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedTechnology = value!;
                    });
                  },
                  hint: Text("Technology"),
                  underline: Container(),
                  icon: Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),

              // Second Heading
              SizedBox(height: 150),
              Text(
                "Project Scope",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),


              Container(
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textFieldController,
                    decoration: InputDecoration(
                      hintText: "Write here...",
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              // Button
              SizedBox(
                height: 60,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    textFieldController.clear();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Data Saved Successfully")));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: Container(
                            margin: EdgeInsets.all(2),
                            alignment: Alignment.center,
                            child: Text(
                              'Continue',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
