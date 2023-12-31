// 사용 방법 - 선언 방법
class Box<T> { // T : 모든 타입을 받을 수 있다
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {
  // 1단계 - 문자열
  var stringBox = Box<String>("Hello, Dart!!");
  print(stringBox.getValue());
  // 2단계 - 정수
  var intBox = Box<int>(50);
  print(intBox.getValue());

  // 3단계 - 심화
  var numbers = [1, 2, 3, 4, 5];
  var firstEvent = findFirst(numbers, (n) => n % 2 == 0);
  print("first Event : $firstEvent");
  var firstOdd = findFirst(numbers, (n) => n % 2 != 0);
  print("first Odd : $firstOdd");
}

// 3단계
// 제네릭 함수에 사용
T? findFirst<T>(List<T> items, bool Function(T) check) {
  var count = 0;
  // 처음부터 끝까지 반복 처리
  for (var i in items) {
    count++;
    print("count : $count , item : $i");
    // check 함수이다.
    // check 함수는 어떤 데이터 타입이든 매개변수로 담을 수 있다.
    // check 함수에 구현 부분은 사용 시점에 구현하고, 단 그 구현에 결과의
    // 데이터 타입은 bool 형태가 되어야 한다.
    if (check(i)) {
      return i;
    }
  }
  return null;
}

// 난이도 상
int? findLastEvent<T>(List<int> items, bool Function(T) check) {
  // 도전 과제 : 여기 안에 식을 완성 해주세요
  for(int i = items.length - 1; i >= 0; i--){
    print("count : $i, item : $items[i]");
  }
  return null;
}