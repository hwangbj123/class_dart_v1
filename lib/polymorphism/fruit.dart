class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);

  void showInfo(){
    print('상품명 : $name \n가격 : $price');
  }
}

class Peach extends Fruit{
  Peach(super.name, super.price);
}

class Banana extends Fruit{
  String origin;
  Banana(super.name, super.price, this.origin);
}

void main(){
  // 업캐스팅, 다운캐스팅 의미를 알아보자
  List<Fruit> fruits = [Banana('델몬트바나나', 3000, '필리핀'),
                        Peach('아삭복숭아', 5000)];
  fruits[0].name;
  fruits[0].price;
  fruits[0].showInfo(); // 업캐스팅 된 상태
  // fruit[0].origin; // 컴파일 시점에 선언된 데이터 타입까지만 확인 가능

  // 업캐스팅된 상태인 바나나의 origin 변수에 접근하려면 ?
  // 컴파일 시점에서 형 변환 처리를 해주면 된다
  // Banana banana1 = ((Banana)fruits[0]).origin; // java 에서 다운캐스팅(형변환) 했던 방법
  // dart 에서의 다운 캐스팅
  // as : 상속 관계에서 형 변환을 처리할 수 있다
  Banana banana1 = fruits[0] as Banana;

  print(banana1.origin);


}