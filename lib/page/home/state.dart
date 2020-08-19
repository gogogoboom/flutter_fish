import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish/test/store/state.dart';

class HomeState implements Cloneable<HomeState>, GlobalBaseState {

  static const String fixedMsg = '我是FirstPage页面传递过来的数据';
  int count;
  @override
  HomeState clone() {
    return HomeState()..count = count..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()..count = 0;
}
