// 통장 클래스 만들기
class Passbook {

  String? _name;
  String? _accountNumber;
  int? _accountBalance;

  // 축약형 getters, setters 메소드
  // String getName(){
  //   return _name!;
  // } // 일반적인 getter
  String? get name => _name; // getter 축약형
  String? get accountNumber => _accountNumber;
  int? get accountBalance => _accountBalance;

  set name(String? name) => _name = name; // setter 축약형
  set accountNumber(String? accountNumber) => _accountNumber = accountNumber;
  set accountBalance(int? accountBalance) => _accountBalance = accountBalance;

  // private 변수 사용할 경우 {} 명명 매개변수로 선언할 수 없다
  Passbook(this._name, this._accountNumber, this._accountBalance);

  // 입금 메소드
  void deposit(int money) {
    _accountBalance = (_accountBalance??0) + money;
    print('입금 완료');
  }

  // 출금 메소드
  int withdraw(int money) {
    int currentMoney = _accountBalance??0;
    // 마통이 아니라면 출금 시 잔액과 비교하는 방어적 코드 필요
    if(currentMoney < money){
      print('잔액 부족');
      return 0;
    }else{
      currentMoney -= money;
      _accountBalance = currentMoney;
      return money;
    }
  }

}