class Student{
  // 1. 이름, 나이 -> private 선언
  // 2. 축약형 get, set 메소드 만들기
  String? _name;
  int? _age;

  String? get getName => _name;
  int? get getAge => _age;

  set setName(String? name) => _name = name;
  set setAge(int? age) => _age = age;
  
}