import 'package:flutter/material.dart';
import 'package:cgpa_calc/Subject.dart';
import 'package:cgpa_calc/SubjectTile.dart';

class GetGrade extends StatelessWidget {
  const GetGrade({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Subject> subjectsObj = [
      Subject(
        subject: "Engineering Exploration - 4",
        credit: 1,
      ),
      Subject(
        subject: "Design and Analysis of Algorithm",
        credit: 3,
      ),
      Subject(
        subject: "Probability,Statics and Queuing theory",
        credit: 4,
      ),
      Subject(
        subject: "Career Enhancement Program",
        credit: 1,
      ),
      Subject(
        subject: "Computer Networks",
        credit: 4,
      ),
      Subject(
        subject: "Advanced JAVA Programming",
        credit: 4,
      ),
      Subject(
        subject: "Internet Programming",
        credit: 4,
      ),
      Subject(
        subject: "Advanced Database",
        credit: 4,
      ),
      Subject(subject: "Design and Analysis of Algorithm Laboratory", credit: 1)
    ];
    listOfSubjectTile() {
      List<Widget> subjectsTile = List.of(
          subjectsObj.map((e) => SubjectTile(subject: e)),
          growable: true);
      return subjectsTile;
    }

    return Scaffold(
      backgroundColor: Colors.green[500],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            // height: 550,
            color: Colors.white70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "CALCULATE CGPA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Column(children: listOfSubjectTile()),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "result",
                        arguments: Subject.calculateCgpa(subjectsObj));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orange[600])),
                  child: const Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
