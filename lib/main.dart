import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Home({super.key});
  final List<String> _menu = ["O", "A+", "A", "B+", "B", "C", "U"];
  final TextEditingController _eeLab = TextEditingController();
  final TextEditingController _daa = TextEditingController();
  final TextEditingController _ip = TextEditingController();
  final TextEditingController _ajp = TextEditingController();
  final TextEditingController _cn = TextEditingController();
  final TextEditingController _daalab = TextEditingController();
  final TextEditingController _maths = TextEditingController();
  final TextEditingController _cep = TextEditingController();
  final TextEditingController _adb = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CGPA_CalC",
      home: Scaffold(
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
                  Text(
                    "CALCULATE CGPA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Engineering Exploration-4",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _eeLab,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Design and Analysis of Algorithm",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _daa,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Probablity Static and queuing Theroy",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _maths,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "CEP",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _cep,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Computer Networks",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _cn,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Advance Java Programming",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _ajp,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Internet Programming",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _ip,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Advanced Database",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _adb,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      "Design and Analysis of Algorithm Lab",
                      style: TextStyle(fontFamily: "Tektur"),
                    ),
                    trailing: DropdownMenu(
                      controller: _daalab,
                      menuStyle: MenuStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white70),
                      ),
                      dropdownMenuEntries: _menu
                          .map((e) => DropdownMenuEntry(
                                value: e.toString(),
                                label: e.toString(),
                              ))
                          .toList(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "CALAULATE",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange[600])),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
