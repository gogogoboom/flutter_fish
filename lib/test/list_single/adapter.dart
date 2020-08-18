import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish/test/list_single/item/component.dart';
import 'package:flutter_fish/test/list_single/state.dart';

class ListSingleItemAdapter extends SourceFlowAdapter<ListSingleState> {
  static const String item_style = "project_tab_item";

  ListSingleItemAdapter() : super(
      pool: <String, Component<Object>>{
        item_style: ItemComponent(),
      }
  );
}