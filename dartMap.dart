void main() {
  Map<String, dynamic> studentsInfo = {
    "Id": 201071030,
    "Name": "Mostafejur Rahman",
    "Batch" : 23,
    "Dept" : "CSE"
  };
  print(studentsInfo["Name"]);
  studentsInfo.addAll({"Age": 23, "skills" : "Nothihg"});
  print(studentsInfo);
  print(studentsInfo.keys);
  print(studentsInfo.values);
  print(studentsInfo.entries);
  print(studentsInfo.length);

  studentsInfo ["Gender"] = "Male";
  print(studentsInfo["Gender"]);
  print(studentsInfo.length);
  studentsInfo.clear();
  print(studentsInfo.length);

}
