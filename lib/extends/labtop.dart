/// 도전과제
/// Laptop 클래스 설계 - 멤버 데이터 name, color
/// 생성자 정의 name, color
///
/// MacBook 클래스 설계 - Laptop 상속 - 초기화 이니셜라이즈 사용

class Laptop {
  String name;
  String color;

  Laptop(this.name, this.color){
    print('부모 클래스 생성자 호출');
  }

  @override
  String toString(){
    return 'Laptop name : $name, color : $color';
  }
}

class MacBook extends Laptop {
  MacBook(name, color):super(name, color){
    print('자식 클래스 생성자 호출');
    print(': 초기화 이니셜라이즈에 body 를 붙여서 코드를 추가할 수 있다');
  }

  @override
  String toString() {
    return 'MacBook name : $name, color : $color';
  }
}

void main(){
  MacBook macBook = MacBook('MacBook Pro', '스페이스 그린');
  print('$macBook');
}