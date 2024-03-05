import 'package:flutter/material.dart';

class CreatePopUp extends StatefulWidget {
  const CreatePopUp({super.key});

  @override
  _CreatePopUpState createState() => _CreatePopUpState();
}

class _CreatePopUpState extends State<CreatePopUp> {
  int activeStep = 0;
  TextEditingController projectNameController = TextEditingController();
  TextEditingController clientNameController = TextEditingController();
  TextEditingController clientEmailController = TextEditingController();
  bool showProjectNameError = false;
  bool showClientNameError = false;
  bool showClientEmailError = false;
  String selectedProjectManager = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return AlertDialog(
      title: Row(
        children: [
          const Text('Create Project'),
          const Spacer(),
          InkWell(
            child: const Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      content: SizedBox(
        width: screenWidth * 0.8,
        height: screenHeight * 0.4,
        child: Stepper(
          type: StepperType.horizontal,
          steps: [
            Step(
              isActive: activeStep == 0,
              state: activeStep > 0 ? StepState.complete : StepState.indexed,
              title: const Text(''),
              content: SizedBox(
                width: screenWidth * 0.4,
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: const Text(
                        "Project Details",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 50,
                        width: screenWidth * 0.5,
                        alignment: AlignmentDirectional.topStart,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                          color: showProjectNameError
                              ? Colors.red.withOpacity(0.3)
                              : null,
                        ),
                        child: TextField(
                          controller: projectNameController,
                          decoration: const InputDecoration(
                            hintText: "Enter Project Name..",
                          ),
                        ),
                      ),
                    ),
                    if (showProjectNameError)
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Project name can't be empty",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Step(
              isActive: activeStep == 1,
              state: activeStep > 1 ? StepState.complete : StepState.indexed,
              title: const Text(''),
              content: SizedBox(
                width: screenWidth * 0.4,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Invite Client",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                          color: showClientNameError
                              ? Colors.red.withOpacity(0.3)
                              : null,
                        ),
                        child: TextField(
                          controller: clientNameController,
                          decoration: const InputDecoration(
                            hintText: "Enter Client Name..",
                          ),
                        ),
                      ),
                    ),
                    if (showClientNameError)
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Client name can't be empty",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                          color: showClientEmailError
                              ? Colors.red.withOpacity(0.3)
                              : null,
                        ),
                        child: TextField(
                          controller: clientEmailController,
                          decoration: const InputDecoration(
                            hintText: "Enter Client Email..",
                          ),
                        ),
                      ),
                    ),
                    if (showClientEmailError)
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Client Email can't be empty",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            " + ADD ",
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                        ),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Added Successfully'),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Step(
              isActive: activeStep == 2,
              state: activeStep > 2 ? StepState.complete : StepState.indexed,
              title: const Text(''),
              content: SizedBox(
                width: screenWidth * 0.4,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Select Project Manager",
                        style: TextStyle(
                          fontSize: 22.2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: DropdownButtonFormField<String>(
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedProjectManager = newValue!;
                            });
                          },
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Project Manager 1',
                              child: Text('Dipa Majumdar'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Project Manager 2',
                              child: Text('Chintak Patel'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Project Manager 3',
                              child: Text('Rohit Shah'),
                            ),
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Select Project Manager',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          currentStep: activeStep,
          onStepContinue: () {
            if (activeStep == 0) {
              if (projectNameController.text.isEmpty) {
                setState(() {
                  showProjectNameError = true;
                });
                return;
              } else {
                setState(() {
                  showProjectNameError = false;
                });
              }
            } else if (activeStep == 1) {
              if (clientNameController.text.isEmpty) {
                setState(() {
                  showClientNameError = true;
                });
                return;
              } else {
                setState(() {
                  showClientNameError = false;
                });
              }

              if (clientEmailController.text.isEmpty) {
                setState(() {
                  showClientEmailError = true;
                });
                return;
              } else {
                setState(() {
                  showClientEmailError = false;
                });
              }
            }

            if (activeStep < 2) {
              setState(() {
                activeStep += 1;
              });
            } else if (activeStep == 2) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Project Created Successfully"),
              ));
            }
          },
          onStepCancel: activeStep > 0
              ? () {
            setState(() {
              activeStep -= 1;
              showProjectNameError = false;
              showClientNameError = false;
              showClientEmailError = false;
            });
          }
              : null,
        ),
      ),
    );
  }
}
