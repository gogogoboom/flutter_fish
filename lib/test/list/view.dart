import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('ListPage'),
    ),
    body: _itemWidget(state, viewService),
  );
}

_itemWidget(ListState state, ViewService viewService) {
  if(state.items != null)  {
    //使用列表
    return ListView.builder(
        itemBuilder: viewService.buildAdapter().itemBuilder,
        itemCount: viewService.buildAdapter().itemCount,
    );
  } else {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
