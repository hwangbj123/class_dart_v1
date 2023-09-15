class Laptop {
  turnOn() {
    // return 타입 void - 생략 가능
    print('전원을 켭니다');
  }

  turnOff() {
    print('전원을 끕니다');
  }
}

class MacBook implements Laptop {
  @override
  turnOn() {
    print('맥북 전원을 켭니다');
  }
  @override
  turnOff() {
    print('맥북 전원을 끕니다');
  }
}

void main() {
  MacBook book = MacBook();
  book.turnOn();
  book.turnOff();
}