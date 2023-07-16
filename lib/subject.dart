class Subject {
  String subject;
  int credit;
  static final List<String> grades = ["O", "A+", "A", "B+", "B", "C", "U"];
  Subject({required this.subject, required this.credit});
  late String grade;
  setGrade(grade) {
    this.grade = grade;
  }
}
