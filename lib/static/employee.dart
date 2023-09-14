class Employee {

  String? name;
  int? empNo;
  static int nextEmpNo = 1000;

  Employee(this.name){
    // this.name = name;
    empNo = nextEmpNo;
    nextEmpNo++;
    display();
  }
  // 함수 - 독립적인 일련의 코드 묶음
  // 메서드 - 멤버 변수를 활용하여 기능 구현
  void display(){
    print('이름 : $name');
    print('사원 번호 : $empNo');
  }
}

void main(){

  // 제약 조건
  // Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언하시오
  // 단, Employee 인스턴스화되면 -> (객체)
  // 사원 번호가 자동으로 1 씩 증가할 수 있도록 만들어주세요

  Employee employee1 = Employee('adam');
  Employee employee2 = Employee('bob');
  Employee employee3 = Employee('cloe');

}