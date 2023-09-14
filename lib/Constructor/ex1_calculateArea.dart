void main(){
  Rectangle rectangle1 = Rectangle(5, 8);
  rectangle1.calculateArea();

  Rectangle rectangle2 = Rectangle(10, 10);
  rectangle2.calculateArea();

  Circle circle = Circle(7);
  circle.calculateArea();
}

class Rectangle{
  double width;
  double height;
  Rectangle(this.width, this.height);
  void calculateArea(){
    print('가로가 $width, 세로가 $height인 직사각형의 넓이 : ${width*height}');
  }
}

class Circle{
  double radius;
  Circle(this.radius);
  void calculateArea(){
    print('반지름이 $radius인 원의 넓이 : ${3.14*radius*radius}');
  }
}