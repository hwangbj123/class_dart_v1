// main - 코드의 시작점
void main(){

  Rectangle rectangle = Rectangle();
  // 예외가 발생할 수 있는 코드 작성
  try{
    double result = rectangle.calculateArea();
    print('직사각형의 넓이 : $result');
  }catch(e){
    print('에러 확인 : $e');
  }

  print('-----------------------');
  print('여기가 실행이 될까요?');

} // end of main

class Rectangle{

  double? width;
  double? height;

  double calculateArea(){
    return width! * height!; // 개발자가 '!' 를 사용해서 null 이 아님을 명시할 수 있다
  }

}