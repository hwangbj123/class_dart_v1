// 도전 과제 - 주사위 게임을 만들어주세요
// 1. 주사위의 숫자는 열거형으로 설계해주세요
// 2. dart:math 랜덤 변수 하나는 뽑아주세요
// 3. switch 구문을 활용해서 패턴 매칭을 시켜주세요 enum <-> 랜덤 숫자
import 'dart:math';

enum Dice {
  one, two, three, four, five, six , out
}

void main(){
  Random rd = Random();
  int user = rd.nextInt(6)+1;
  int com = rd.nextInt(6)+1;
  Dice userDice = diceRoll(user);
  Dice comDice = diceRoll(com);

  print('user dice : $userDice ($user)');
  print('com dice : $comDice ($com)');

  if(user>com){
    print('나의 주사위 값이 더 높습니다');
  }else if(com>user){
    print('나의 주사위 값이 더 낮습니다');
  }else{
    print('주사위 값이 같습니다');
  }
}

Dice diceRoll(int dice){
  switch(dice){
    case 1:
      return Dice.one;
    case 2:
      return Dice.two;
    case 3:
      return Dice.three;
    case 4:
      return Dice.four;
    case 5:
      return Dice.five;
    case 6:
      return Dice.six;
    default:
      return Dice.out;
  }
}