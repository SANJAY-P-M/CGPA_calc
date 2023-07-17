import 'package:flutter/material.dart';
import 'package:cgpa_calc/Subject.dart';

class SubjectTile extends StatelessWidget {
  final Subject subject;
  SubjectTile({super.key, required this.subject});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      title: Text(
        subject.subject,
        style: const TextStyle(fontFamily: "Tektur"),
      ),
      trailing: DropdownMenu(
        menuStyle: const MenuStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white),
        ),
        dropdownMenuEntries: subject.grades
            .map((e) => DropdownMenuEntry(
                  value: e.toString(),
                  label: e.toString(),
                ))
            .toList(),
        onSelected: (value) {
          subject.setGrade(value);
        },
      ),
    );
  }
}
