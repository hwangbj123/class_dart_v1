void main(){

  String name = "John"; // name : null 이 아닌 문자열만 가질 수 있다
  int age = 30; // age : null 이 아닌 정수값만 가질 수 있다

  String? nullableName; // nullableName : 문자열 또는 null 값을 가질 수 있다
  int? nullableAge; // nullableAge : 정수값 또는 null 값을 가질 수 있다

  // 방어적 코드
  if(nullableName != null){
    print('Name : $nullableName');
  }

}