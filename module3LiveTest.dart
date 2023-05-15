class Person{
  late String name;
  late int age;
  late String address;

  Person(this.name, this.age, this.address);
  void sayHello(){
    print("Hello! My name is $name");
  }
  int getAgeInMonth(){
    return (age * 12);
  }
}

void main(){
  Person person = Person("Mostafejur Rahman", 22, "Uttara, Dhaka");
  person.sayHello();
  print("My Age in month: ${person.getAgeInMonth()} month");

}