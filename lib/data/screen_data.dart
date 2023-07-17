

import 'package:animation_app_demo/models/screen_model.dart';
import 'package:animation_app_demo/screens/3DAnimation/animation_view.dart';
import 'package:animation_app_demo/screens/listview_scroling/list_scroll_view.dart';

final List<ScreenModel> screens = [
  ScreenModel(title: "List View", subtitle: "subtitle", onChanged: () {}, page: ListScrollView()),
  ScreenModel(title: "テスト", subtitle: "subtitle", onChanged: () {}, page: ListScrollView()),
  ScreenModel(title: "テスト", subtitle: "subtitle", onChanged: () {}, page: AniamationView()),
];