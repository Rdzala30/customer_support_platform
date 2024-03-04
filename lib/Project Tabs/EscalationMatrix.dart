import 'package:flutter/material.dart';

class EscalationMatrix extends StatelessWidget {
  const EscalationMatrix({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth * 0.99,

          child: Column(


            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Text("Operational Escalation Matrix" ,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                    width: screenWidth * 0.31, child: Text("Escalation Level" , textAlign: TextAlign.start,)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Name" , textAlign: TextAlign.center,)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Role" , textAlign: TextAlign.center,)),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 1", textAlign: TextAlign.start,)),

                     SizedBox(
                         width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),

              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 2", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 3", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),
              Divider(),


              //2
              Padding(padding: EdgeInsets.all(10.0)),
              Text("Financial Escalation Matrix" ,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Escalation Level" , textAlign: TextAlign.start,)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Name" , textAlign: TextAlign.center,)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Role" , textAlign: TextAlign.center,)),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 1", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),

              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 2", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 3", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),
              Divider(),


              //3
              Padding(padding: EdgeInsets.all(10.0)),
              Text("Technical Escalation Matrix" ,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Escalation Level" , textAlign: TextAlign.start,)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Name" , textAlign: TextAlign.center,)),
                  SizedBox(
                      width: screenWidth * 0.31, child: Text("Role" , textAlign: TextAlign.center,)),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 1", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),

              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 2", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6.0)),
                  SizedBox(
                      width: screenWidth* 0.31 , child: Text("Level 3", textAlign: TextAlign.start,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Dipa Majumdar", textAlign: TextAlign.center,)),

                  SizedBox(
                      width: screenWidth* 0.31 ,child: Text("Project Manager", textAlign: TextAlign.end,)),
                ],
              ),
              Divider(),

            ],
          ),

        ),
      )
    );
  }
}
