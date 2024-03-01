import 'package:flutter/material.dart';

class CreatePopUp extends StatefulWidget {
  @override
  _CreatePopUpState createState() => _CreatePopUpState();
}
class _CreatePopUpState extends State<CreatePopUp> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      title: Row(
        children: [
          Text('Create Project'),
          Spacer(),
          InkWell(child: Icon(Icons.close) , onTap: (){ Navigator.pop(context);},)
        ],
      ),
      content: Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.4,
        child: Stepper(
          type: StepperType.horizontal,
          steps: [
            Step(
              isActive: activeStep == 0,
              title: Text(''),
              content: Container(
                width: screenWidth*0.4,
                child: Column(
                  children: [
                    Text("Project Details" , style: TextStyle(
                        fontSize: 26
                    ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              labelText: "Enter Project Name..",
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            Step(
              isActive: activeStep == 1,
              title: Text(''),
              content: Container(
                width: screenWidth*0.4,
                child: Column(
                  children: [
                    Text("Invite Client" , style: TextStyle(
                        fontSize: 26
                    ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              labelText: "Enter Client Name..",
                            ),
                          ),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              labelText: "Enter Client Email..",
                            ),
                          ),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(" + ADD ")
                        )
                    ),
                  ],
                ),
              ),
            ),
            Step(
              isActive: activeStep == 2,
              title: Text(''),
              content: Container(
                width: screenWidth*0.4,
                child: Column(
                  children: [
                    Text("Select Project Manager" , style: TextStyle(
                        fontSize: 22.2
                    ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              labelText: "Select project Manager ^",
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
          currentStep: activeStep,
          onStepContinue: () {
            if (activeStep < 2) {
              setState(() {
                activeStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (activeStep > 0) {
              setState(() {
                activeStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }
}
