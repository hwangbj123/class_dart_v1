class Animal{
  // 속성 만들어주세요
  String? color;
  int? weight;
  String? name;

  Animal(){
    print('기본 생성자');
  }

  // 기능 만들어주세요
  void changeName(String name){
    this.name = name;
  }
  void changeColor(String color){
    this.color = color;
  }
}

void main(){
  // 실행 및 테스트
  Animal animal = Animal();
  animal.changeName('복돌');
  animal.changeColor('황색');
  animal.weight = 15;
  print('name : ${animal.name}');
  print('weight : ${animal.weight}');
}