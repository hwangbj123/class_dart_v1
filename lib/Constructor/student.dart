class Student {

  String name;
  int age;
  int rollNumber;

  // level 1 : 기본 생성자
  // Student(String name, int age, int rollNumber){
  //   this.name = name;
  //   this.age = age;
  //   this.rollNumber = rollNumber;
  // }

  // level 2 : 짧은 형식의 단일 라인 생성자
  Student(this.name, this.age, this.rollNumber);

}