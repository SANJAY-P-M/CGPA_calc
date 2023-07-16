import 'package:flutter/material.dart';
import 'package:cgpa_calc/GetGrade.dart';
import 'package:cgpa_calc/Result.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CGPA_CalC",
      routes: {
        "form": (context) => const GetGrade(),
        "result": (context) => const Result(),
      },
      initialRoute: "form",
    );
  }
}
