import 'package:fish_redux/fish_redux.dart';

enum CountAction { increase, updateCount, backFirst }

class CountActionCreator {
  static Action   increaseAction() {
    return const Action(CountAction.increase);
  }

  static Action updateAction(int count) {
    return Action(CountAction.updateCount, payload: count);
  }


  static Action backFirst() {
    return Action(CountAction.backFirst);
  }
}
