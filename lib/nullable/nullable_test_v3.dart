void main(){

  String? name = "John";
  // String? name;
  String nameNotNullable = name!;

  // name = "John" : Operand of null-aware operation 경고 발생 ( 문제 없음 )
  // name = null : Null check operater used on a null value 에러 발생

}