import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Result extends StatelessWidget {
  const Result({super.key});
  @override
  Widget build(BuildContext context) {
    var cgpa;
    cgpa = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        backgroundColor: Colors.green[400],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: AssetImage("images/sanjay.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "SANJAY P M",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "HandWritten",
                  color: Colors.black,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Mono",
                    color: Colors.black,
                    letterSpacing: 1),
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  height: 10,
                  thickness: 2,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.green[500],
                  ),
                  title: Text(
                    "+91 93633 97249",
                    style: TextStyle(
                      fontFamily: "Mono",
                      fontSize: 20,
                    ),
                  ),
                  dense: true,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.mail,
                    color: Colors.green[500],
                  ),
                  title: Text(
                    "pmsanjay2003@gmail.com",
                    style: TextStyle(
                      fontFamily: "Mono",
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        CircularPercentIndicator(
          radius: 120.0,
          lineWidth: 30.0,
          percent: (cgpa! / 10),
          center: Text(
            cgpa.toString().substring(0, 4),
            style: TextStyle(
                fontSize: 21,
                fontFamily: "Tektur",
                fontWeight: FontWeight.bold),
          ),
          progressColor: Colors.green,
          animation: true,
          animationDuration: 2000,
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          "Congrats your cgpa is ${cgpa.toString().substring(0, 4)} ",
          style: TextStyle(
            fontSize: 22,
            fontFamily: "HandWritten",
            fontWeight: FontWeight.w400,
          ),
        )
      ]),
    );
  }
}
