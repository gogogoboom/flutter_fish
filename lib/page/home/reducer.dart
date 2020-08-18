import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.updateCount: _updateCount,
    },
  );
}

HomeState _updateCount(HomeState state, Action action) {
  final HomeState newState = state.clone()..count = action.payload;
  return newState;
}
