class Subject {
  String subject;
  double credit;
  List<String> grades = ["O", "A+", "A", "B+", "B", "C", "U"];
  Subject({required this.subject, required this.credit});
  late String grade;
  setGrade(grade) {
    this.grade = grade;
  }

  static calculateCgpa(List<Subject> subjects) {
    double cgpa = 0.0;
    double totalCredits = 0.0;
    for (Subject i in subjects) {
      totalCredits += i.credit;
      switch (i.grade) {
        case "O":
          cgpa += i.credit * 10;
          break;
        case "A+":
          cgpa += i.credit * 9;
          break;
        case "A":
          cgpa += i.credit * 8;
          break;
        case "B+":
          cgpa += i.credit * 7;
          break;
        case "B":
          cgpa += i.credit * 6;
          break;
        case "C":
          cgpa += i.credit * 5;
          break;
        case "U":
          cgpa += i.credit * 0;
          break;
      }
    }
    return cgpa / totalCredits;
  }
}
