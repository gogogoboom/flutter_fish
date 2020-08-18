import 'package:fish_redux/fish_redux.dart';

enum HomeAction { toCount, updateCount, toList, toListSingle }

class HomeActionCreator {
  static Action toCount() {
    return const Action(HomeAction.toCount);
  }

  static Action toList() {
    return const Action(HomeAction.toList);
  }

  static Action toListSingle() {
    return const Action(HomeAction.toListSingle);
  }

  static Action updateCount(int count) {
    return Action(HomeAction.updateCount, payload: count);
  }
}
