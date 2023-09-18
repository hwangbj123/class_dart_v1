void main(){
  // 1. null 에 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;
  // String? maybeName = "홍길동"; // length : 3 출력되나, ? 연산자 필요 없다고 경고도 출력
  // int length = maybeName.length; // nullable 이기 때문에 오류
  int length = maybeName?.length ?? 0;
  // ㄴ 문자열이 null 이 아니면 문자열 길이를 리턴하고, null이면 길이값 0을 리턴한다

  print('length : $length');

  // 2. null 에 안전한 객체 메서드 접근

  String? name = getName(); // getName() : 리턴타입 String? ->null 또는 문자열 반환 가능
  // String returnName = name.toLowerCase(); // nullable 이기 때문에 오류
  String returnName = name?.toLowerCase() ?? "Hong"; // ?? : null 병합 연산자

  print('returnName : $returnName');

  // 3.
  String displayName = name ?? "Unknown";
  print('displayName : $displayName');

}

// 함수
String? getName(){
  return null;
}