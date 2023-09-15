abstract class Animal {
  String name;
  Animal(this.name);
  void makeSound();
}

class Dog extends Animal {
  // 메모리에 부모클래스인 Animal 이 먼저 올라가야 한다
  Dog(String name) : super(name); // 초기화 이니셜라이즈

  @override
  void makeSound() {
    print('$name 이 멍멍 합니다');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name 이 야옹 합니다');
  }
}

void main() {
  // 리스트에 객체 넣기
  // 반복문을 통해 실행

  List<Animal> animals = [Dog('복순이'), Cat('또순이')];

  for(var a in animals) {
    a.makeSound();
  }
}