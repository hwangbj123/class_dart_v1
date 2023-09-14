void main(){
  Student student = Student('철수');
  student.takeBus('100');
  student.transferBus();
  student.takeBus('404');
  student.takeBus('100-1');

  Student student1 = Student('영희');
  student1.takeBus('200');
  student1.takeBus('300');
}

class Student{
  String name;
  int money;
  int transfer = 0;

  Student(this.name, [this.money=2000]);

  void takeBus(String busNum){
    if(transfer==0){
      Bus bus = Bus(busNum);
      if(bus.price > money){
        print('돈이 부족해서 버스에 탈 수 없습니다');
      }else {
        print('$name(이)가 $busNum번 버스를 탑니다');
        print(
            '남은 돈 : $money - ${bus.price} = ${money - bus.price}');
        money = money - bus.price;
      }
    }else{
      Bus bus = Bus(busNum, 0);
      print('$name(이)가 $busNum번 버스를 탑니다');
      print('남은 돈 : $money - ${bus.price} = ${money - bus.price}');
      money = money - bus.price;
      transfer = 0;
    }
    print('------------------------------');
  }
  void transferBus(){
    print('$name(이)가 환승했습니다');
    transfer = 1;
    print('------------------------------');
  }
}

class Bus{
  String busNum;
  int price;

  Bus(this.busNum, [this.price=1300]);
}