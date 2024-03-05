import 'package:flutter/material.dart';

class ScopeStack extends StatefulWidget {
  const ScopeStack({Key? key}) : super(key: key);

  @override
  _ScopeStackState createState() => _ScopeStackState();
}

class _ScopeStackState extends State<ScopeStack> {
  String selectedTechnology = "Mobile app";
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
              const Text(
                "Select Project Technology's  ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownButton<String>(
                  value: selectedTechnology,
                  items: const [
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
                  hint: const Text("Technology"),
                  underline: Container(),
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              const SizedBox(height: 150),
              const Text(
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
                    decoration: const InputDecoration(
                      hintText: "Write here...",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    textFieldController.clear();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Data Saved Successfully")));
                    DefaultTabController.of(context).animateTo(2);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                            margin: const EdgeInsets.all(2),
                            alignment: Alignment.center,
                            child: const Text(
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
