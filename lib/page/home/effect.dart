import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_fish/page/home/action.dart';
import 'package:flutter_fish/page/home/state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.toCount: _toCount,
    HomeAction.toList: _toList,
    HomeAction.toListSingle: _toListSingle,
  });
}

void _toCount(action, Context<HomeState> ctx) async {
  var result = await Navigator.of(ctx.context)
      .pushNamed('count_page', arguments: {'count': HomeState.fixedMsg});
  ctx.dispatch(HomeActionCreator.updateCount((result as Map)['count']));
}

void _toListSingle(action, Context<HomeState> ctx) {
  Navigator.of(ctx.context).pushNamed('list_single_page');
}

void _toList(action, Context<HomeState> ctx) async {
  Navigator.of(ctx.context).pushNamed('list_page');
}
