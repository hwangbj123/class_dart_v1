void main(){

  // Person personKim = new Person();
  Person personKim = Person();
  personKim.myName = '홍길동';
  personKim.phone = '010-1234-1234';
  personKim.age = 20;
  personKim.displayInfo();

}

// 클래스 설계하기
class Person{

  // dart 2.2 버전 이후부터 진행
  // nullable 타입의 이해
  // dart 이전 버전에서는 모든 변수가 null 이 아닌 값으로 세팅됨
  // 예외 / 명시적으로 null 의 허용 여부를 표현할 수 있는 타입이 nullable 타입
  // String != String?

  String? myName;
  String? phone;
  int? age;

  void displayInfo(){
    print('Person name : $myName');
    print('phone number : $phone');
    print('Age : $age');
  }

} // end of person