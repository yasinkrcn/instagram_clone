

import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/domain/entities/_entities_exports.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/domain/repo/bottom_navigation_info_repository.dart';

class BottomNavigationBarProvider extends ChangeNotifier implements BottomNavigationInfoRepository {
  BottomNavigationBarState selectedBarState = BottomNavigationBarState.HOME;
  bool _isBottomBarVisible = true;
  bool isAppbarVisible = true;

  double scrollingPixel = 0.0;
  double _startPixel = 0.0;

  double _scrollingReversePixel = 0.0;
  double _startReversePixel = 0.0;

  void _showBottomBar() {
    if (!_isBottomBarVisible) {
      _isBottomBarVisible = true;
      isAppbarVisible = true;
      _startPixel = 0.0;
      scrollingPixel = 0.0;
      notifyListeners();
    }
  }

  void _hideBottomBar() {
    if (_isBottomBarVisible) {
      _isBottomBarVisible = false;
      notifyListeners();
    }
  }

  void scrollDown(double pixel) {
    _startReversePixel = 0.0;
    _scrollingReversePixel = 0.0;
    if (scrollingPixel == 0.0) {
      _startPixel = pixel;
      scrollingPixel = 1;
    } else {
      scrollingPixel = pixel - _startPixel;
      if (scrollingPixel >= 93.0) {
        scrollingPixel = 95.0;
      }
      if (scrollingPixel == 95.0) {
        _hideBottomBar();
      }
    }
  }

  void scrollUp(double pixel) {
    if (_startReversePixel == 0.0) {
      _startReversePixel = pixel;
    } else {
      _scrollingReversePixel = _startReversePixel - pixel;
      if (_scrollingReversePixel >= 10) {
        _startPixel = 0.0;
        scrollingPixel = 0.0;
        _showBottomBar();
      }
    }
  }

  set setBottomBarVisible(bool value) {
    _isBottomBarVisible = value;
    notifyListeners();
  }

  bool get isBottomBarVisible => _isBottomBarVisible;

  @override
  void routePage(BottomNavigationBarState pageState) {
    if (selectedBarState != pageState) {
      selectedBarState = pageState;
      notifyListeners();
    }
  }
}
