import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_fish/test/count/page.dart';
import 'package:flutter_fish/test/list/page.dart';
import 'package:flutter_fish/test/list_single/page.dart';
import 'package:flutter_fish/test/store/state.dart';
import 'package:flutter_fish/test/store/store.dart';

import 'page/home/page.dart';

Widget createApp() {
  _updateState() {
    return (Object pageState, GlobalState appState) {
      final GlobalBaseState p = pageState;
      if (pageState is Cloneable) {
        final Object copy = pageState.clone();
        final GlobalBaseState newState = copy;
        if (p.themeColor != appState.themeColor) {
          newState.themeColor = appState.themeColor;
        }
        return newState;
      }
      return pageState;
    };
  }

  final AbstractRoutes routes =
  PageRoutes(
      visitor: (String path, Page<Object, dynamic> page) {
        if (page.isTypeof<GlobalBaseState>()) {
          ///建立AppStore驱动PageStore的单向数据连接： 参数1 AppStore  参数2 当AppStore.state变化时,PageStore.state该如何变化
          page.connectExtraStore<GlobalState>(GlobalStore.store, _updateState());
        }
      },
      pages: <String, Page<Object, dynamic>>{
        'home_page': HomePage(),
        'count_page': CountPage(),
        'list_page': ListPage(),
        'list_single_page': ListSinglePage(),
      }
  );

  return MaterialApp(
    title: 'FishRedux',
    home: routes.buildPage('home_page', null),
    onGenerateRoute: (RouteSettings settings) {
      //ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
