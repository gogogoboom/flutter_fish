import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish/test/list_single/adapter.dart';
import 'package:flutter_fish/test/list_single/item/state.dart';

class ListSingleState extends MutableSource implements Cloneable<ListSingleState> {
  List<ItemState> items;
  @override
  ListSingleState clone() {
    return ListSingleState()..items  = items;
  }

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => ListSingleItemAdapter.item_style;

  @override
  // TODO: implement itemCount
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }
}

ListSingleState initState(Map<String, dynamic> args) {
  return ListSingleState()
    ..items = [
      ItemState(id: 1, title: "列表Item-1", itemStatus: false),
      ItemState(id: 2, title: "列表Item-2", itemStatus: false),
      ItemState(id: 3, title: "列表Item-3", itemStatus: false),
      ItemState(id: 4, title: "列表Item-4", itemStatus: false),
      ItemState(id: 5, title: "列表Item-5", itemStatus: false),
      ItemState(id: 6, title: "列表Item-6", itemStatus: false),
    ];
}
