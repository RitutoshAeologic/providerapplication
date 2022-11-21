import 'package:flutter/material.dart';

import '../enums/view_state_enum.dart';


class BaseViewModel with ChangeNotifier {

  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }


  void update() {
    notifyListeners();
  }
}
