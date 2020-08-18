import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Fish'),
    ),
    body: Center(
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              dispatch(HomeActionCreator.toCount());
            },
            child: Text('Counter value is ${state.count}'),
          ),
          RaisedButton(
            onPressed: () {
              dispatch(HomeActionCreator.toList());
            },
            child: Text('List Page Demo}'),
          ),
          RaisedButton(
            onPressed: () {
              dispatch(HomeActionCreator.toListSingle());
            },
            child: Text('List Single Page Demo}'),
          ),
        ],
      ),
    ),
  );
}
