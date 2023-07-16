import 'package:flutter/material.dart';
import 'package:cgpa_calc/Subject.dart';

class SubjectTile extends StatelessWidget {
  final Subject subject;
  SubjectTile({super.key, required this.subject});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      title: Text(
        subject.subject,
        style: const TextStyle(fontFamily: "Tektur"),
      ),
      trailing: DropdownMenu(
        controller: _controller,
        menuStyle: const MenuStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white70),
        ),
        dropdownMenuEntries: Subject.grades
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
