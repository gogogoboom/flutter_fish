import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CountState state, Dispatch dispatch, ViewService viewService) {
  return WillPopScope(
    child: _bodyWidget(dispatch, state),
    onWillPop: (){
      dispatch(CountActionCreator.backFirst());
      return Future.value();
    },
  );
}

_bodyWidget(Dispatch dispatch, CountState state) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Count Demo'),
      backgroundColor: state.themeColor,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          ///使用state中的变量，控住数据的变换
          Text(state.count.toString()),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        dispatch(CountActionCreator.increaseAction());
      },
      child: Icon(Icons.add),
    ),
  );
}
