import 'package:flutter_v1/test/student.dart';

class Subway {

  int lineNumber;
  int count;
  int money;
  List<String> list = [];

  Subway(this.lineNumber, this.count, this.money);

  // 승객을 태우다
  void take(int money) {
    this.money += money;
    count++;
  }

  void showInfo(){
    print('호선 : $lineNumber');
    print('수익금 : $money');
    print('승객 수 : $count');
    print('승객 명단 : $list');
  }

}