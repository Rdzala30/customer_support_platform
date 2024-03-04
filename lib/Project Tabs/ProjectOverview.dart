import 'package:flutter/material.dart';

class ProjectOverview extends StatelessWidget {
  const ProjectOverview({super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController textBudgetEditingController = TextEditingController();
    TextEditingController textBriefEditingController = TextEditingController();
    TextEditingController textPurposeEditingController = TextEditingController();
    TextEditingController textGoalsEditingController = TextEditingController();
    TextEditingController textObjectivesEditingController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),

            Text(
            "Project Brief",
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
                controller: textBriefEditingController,
                decoration: InputDecoration(
                  hintText: "Write project brief here...",
                ),
              ),
            ),
          ),

          //2

              SizedBox(height: 15),
              Text(
                "Purpose",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                height: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textPurposeEditingController,
                    decoration: InputDecoration(
                      hintText: "Write project Purpose here...",
                    ),
                  ),
                ),
              ),

          //3

              SizedBox(height: 15),
              Text(
                "Goals",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textGoalsEditingController,
                    decoration: InputDecoration(
                      hintText: "Write project Goals here...",
                    ),
                  ),
                ),
              ),

          //4

              SizedBox(height: 15),
              // First Heading
              Text(
                "Project Objectives",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                height: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textObjectivesEditingController,
                    decoration: InputDecoration(
                      hintText: "Write project objectives here...",
                    ),
                  ),
                ),
              ),

          //5

              SizedBox(height: 15),
              Text(
                "Budget",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: textBudgetEditingController,
                        decoration: InputDecoration(
                          hintText: "9999",
                        ),
                      ),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("US Dollar" ,style: TextStyle(fontSize: 20),),
                  )
                ],
              ),

          SizedBox(height: 20),
          // Button
          SizedBox(
            height: 60,
            width: 120,
            child: ElevatedButton(
              onPressed: () {
                textBudgetEditingController.clear();
                textBriefEditingController.clear();
                textPurposeEditingController.clear();
                textGoalsEditingController.clear();
                textObjectivesEditingController.clear();
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
          ]
        ),

      ),
    )
    );
  }
}
