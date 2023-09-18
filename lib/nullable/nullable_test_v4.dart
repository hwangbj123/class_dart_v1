class MyClass {
  late String name; // 컴파일 시점에서 오류 발생하지 않음

  MyClass() {
    // 서버에서 요청한 값을 받아서 클래스를 만들어야할 때
    // 통신을 통해 초기값을 받아야하는 경우 사용 가능
    name="홍길동";
  }

  void printString() {
    print('name : $name');
  }
}

void main() {
  final myObject = MyClass();
  myObject.printString();
  // 예외 발생 - Field 'name' has not been initialized ( 초기화되지 않음 )
}
