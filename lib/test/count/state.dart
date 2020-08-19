import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish/test/store/state.dart';

class CountState implements Cloneable<CountState>, GlobalBaseState {

  int count;
  @override
  CountState clone() {
    return CountState()..count = count..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

CountState initState(Map<String, dynamic> args) {
  return CountState()..count = 0;
}
