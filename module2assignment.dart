String studentGrade(String name, int score) {
  String grade;
  switch (score ~/ 10) {
    case 10:
    case 9:
      grade = "A";
      break;
    case 8:
      grade = "B";
      break;
    case 7:
      grade = "C";
      break;
    case 6:
      grade = "D";
      break;
    case 5:
    case 4:
    case 3:
    case 2:
    case 1:
    case 0:
      grade = "F";
      break;
    default:
      grade = "Invalid Grade";
  }
  return grade;
}

void main(){
  String studentName = "Mostafejur Rahman";
  int testScore = 85;
  String grade = studentGrade(studentName, testScore);
  print("$studentName's grade : $grade");
}