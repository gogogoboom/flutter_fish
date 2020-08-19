import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';

abstract class GlobalBaseState {
  Color themeColor;
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState> {

  @override
  GlobalState clone() {
    return GlobalState();
  }

  @override
  Color themeColor;
}

GlobalState initState(Map<String, dynamic> args) {
  return GlobalState();
}
