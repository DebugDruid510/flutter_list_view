import 'package:flutter/widgets.dart';

import 'flutter_list_view_element.dart';

class FlutterListViewController {
  FlutterListViewElement? _listView;
  jumpToIndex(int index,
      {double offset = 0, bool offsetBasedOnBottom = false}) {
    if (_listView != null) {
      _listView!.jumpToIndex(index, offset, offsetBasedOnBottom);
    }
  }

  animateToIndex(
    int index, {
    required Duration duration,
    required Curve curve,
    double offset = 0,
    bool offsetBasedOnBottom = false,
  }) {
    if (_listView != null) {
      _listView!.animateToIndex(index,
          offset: offset,
          basedOnBottom: offsetBasedOnBottom,
          duration: duration,
          curve: curve);
    }
  }

  void attach(FlutterListViewElement listView) {
    _listView = listView;
  }

  void detach() {
    _listView = null;
  }
}
