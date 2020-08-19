import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish/test/store/reducer.dart';
import 'package:flutter_fish/test/store/state.dart';

/// 建立一个AppStore
/// 目前它的功能只有切换主题
class GlobalStore{
  static Store<GlobalState> _globalStore;
  static Store<GlobalState> get store => _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}

