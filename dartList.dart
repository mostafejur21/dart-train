void main() {
  List<String> studentsName = [
    "Rahim",
    "Karim",
    "gopal",
    "elon musk",
    "jems bond"
  ];
  print(studentsName);
  print(studentsName.length);
  studentsName.add("Mark");
  print(studentsName[5]);
  print(studentsName.length);
  studentsName.insert(0, "Mark don");
  print(studentsName[0]);
  print(studentsName.length);
  studentsName.insertAll(1, ['fizz', 'sohan', 'rakib', 'shakib', 'rahim', 'rubban']);
  print(studentsName);
  print(studentsName.length);
  print(33~/10);
}
