import 'package:flutter/material.dart';

class EscalationMatrix extends StatelessWidget {
  const EscalationMatrix({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: screenWidth * 0.99,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(10.0)),
                const Text(
                  "Operational Escalation Matrix",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Escalation Level",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Name",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Role",
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 1",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 2",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 3",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                const Padding(padding: EdgeInsets.all(10.0)),
                const Text(
                  "Financial Escalation Matrix",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Escalation Level",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Name",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Role",
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 1",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 2",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 3",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                const Padding(padding: EdgeInsets.all(10.0)),
                const Text(
                  "Technical Escalation Matrix",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Escalation Level",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Name",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Role",
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 1",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 2",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Level 3",
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Dipa Majumdar",
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                        width: screenWidth * 0.31,
                        child: const Text(
                          "Project Manager",
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
        ));
  }
}
