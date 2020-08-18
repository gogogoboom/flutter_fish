import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_fish/test/count/page.dart';
import 'package:flutter_fish/test/list/page.dart';
import 'package:flutter_fish/test/list_single/page.dart';

import 'page/home/page.dart';

Widget createApp() {
  final AbstractRoutes routes =
      PageRoutes(pages: <String, Page<Object, dynamic>>{
    'home_page': HomePage(),
    'count_page': CountPage(),
    'list_page': ListPage(),
    'list_single_page': ListSinglePage(),
  });

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
