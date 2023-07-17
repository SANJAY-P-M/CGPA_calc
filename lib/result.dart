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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            Text(
              "Congrats your cgpa is ${cgpa.toStringAsFixed(2)} ",
              style: const TextStyle(
                fontSize: 22,
                fontFamily: "HandWritten",
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CircularPercentIndicator(
              onAnimationEnd: () {},
              radius: 120.0,
              lineWidth: 30.0,
              percent: (cgpa! / 10),
              center: Text(
                cgpa.toStringAsFixed(2),
                style: const TextStyle(
                    fontSize: 21,
                    fontFamily: "Tektur",
                    fontWeight: FontWeight.bold),
              ),
              progressColor: Colors.green,
              animation: true,
              animationDuration: 1200,
            ),
          ]),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              thickness: 3,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 150),
                  child: const Text(
                    "Developed By : ",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Mono",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const CircleAvatar(
                  radius: 40,
                  foregroundImage: AssetImage("images/sanjay.jpg"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "SANJAY P M",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "HandWritten",
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 150,
                  child: Divider(
                    height: 10,
                    thickness: 2,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
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
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
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
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
