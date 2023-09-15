abstract class Shape {
  // 추상 메서드 선언
  // 추상 메서드 : 메서드의 body 없이 선언부만 존재
  double area();

  void display() {
    print("This is shape");
  }
}

// 자식 클래스는 보다 구체적인 클래스로 설계해야 한다
class Circle extends Shape {
  double radius; // null 이 들어갈 수 있기 때문에 오류

  Circle(this.radius); // 생성자의 강제성

  // 물려받은 메서드를 구현해야 함
  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void display() {
    print('원의 반지름 값 : $radius');
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height ;
  }

  @override
  void display() {
    print('직사각형의 가로 : $width, 세로 : $height');
  }
}

void main() {
  // 추상 클래스는 new & 생성자를 호출하여 메모리에 올릴 수 없다 ( 정의는 가능 )
  // Shape shape = new Shape();

  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  List<Shape> shapes = [circle, rectangle];

  for(var s in shapes) {
    s.display();
    print(s.area());
    print('-------------------------------');
  }
}
