import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CountState> buildEffect() {
  return combineEffects(<Object, Effect<CountState>>{
    CountAction.increase: _onIncrease,
    CountAction.backFirst: _onBackFirst
  });
}

void _onBackFirst(Action action, Context<CountState> ctx) {
  ///pop当前页面，并且返回相应的数据
  Navigator.pop(ctx.context, {'count': ctx.state.count});
}

void _onIncrease(Action action, Context<CountState> ctx) {
  int count = ctx.state.count + 1;
  ctx.dispatch(CountActionCreator.updateAction(count));
}
