enum ClotingSize {
  small,
  medium,
  large,
  xLarge,
  xxLarge
}

enum TemperatureRange {
  freezing,
  cold,
  warm,
  hot
}

void main() {

  var size = ClotingSize.large;
  print(size.runtimeType);

  switch(size){
    case ClotingSize.small:
      print('작은 사이즈');
      break;
    case ClotingSize.medium:
      print('보통 사이즈');
      break;
    case ClotingSize.large:
      print('큰 사이즈');
      break;
    case ClotingSize.xLarge:
      print('더 큰 사이즈');
      break;
    case ClotingSize.xxLarge:
      print('더더 큰 사이즈');
      break;

    default:
      print('알 수 없습니다');
  }
}