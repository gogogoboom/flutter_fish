import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fish/test/list/bean/item_detail_model.dart';
import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ListState> ctx) async {
  String apiUrl = "https://www.wanandroid.com/project/list/1/json";
  Response response = await Dio().get(apiUrl);
  ItemDetailModel itemDetailBean =
  ItemDetailModel.fromJson(json.decode(response.toString()));
  List<Datas> itemDetails = itemDetailBean.data.datas;
  ///构建符合要求的列表数据源
  List<ItemState> items = List.generate(itemDetails.length, (index) {
    return ItemState(itemDetail: itemDetails[index]);
  });
  ///通知更新列表数据源
  ctx.dispatch(ListActionCreator.updateItem(items));
}

void _onAction(Action action, Context<ListState> ctx) {

}
