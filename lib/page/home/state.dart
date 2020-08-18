import 'package:fish_redux/fish_redux.dart';

class HomeState implements Cloneable<HomeState> {

  static const String fixedMsg = '我是FirstPage页面传递过来的数据';
  int count;
  @override
  HomeState clone() {
    return HomeState()..count = count;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()..count = 0;
}
