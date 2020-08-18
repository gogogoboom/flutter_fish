import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish/test/list_single/adapter.dart';

import 'state.dart';
import 'view.dart';

class ListSinglePage extends Page<ListSingleState, Map<String, dynamic>> {
  ListSinglePage()
      : super(
            initState: initState,
            view: buildView,
            dependencies: Dependencies<ListSingleState>(
                adapter: NoneConn<ListSingleState>() + ListSingleItemAdapter(),
                slots: <String, Dependent<ListSingleState>>{
                }),
            middleware: <Middleware<ListSingleState>>[
            ],);

}
