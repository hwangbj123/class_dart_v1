class Person{

  String? name;
  int? age;

  void display(){
    print('name : $name');
    print('age : $age');
  }

}

class Student extends Person{

  String? schoolName;
  String? schoolAddress;

  // @override
  void display(){
    print('name : $name');
    print('age : $age');
    print('schoolName : $schoolName');
    print('schoolAddress : $schoolAddress');
  }
}

void main(){

  Student student = Student();
  student.name = '홍길동';
  student.age = 30;
  student.schoolName = '그린대';
  student.schoolAddress = '부산시 진구';
  student.display();
}