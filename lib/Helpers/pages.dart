import 'package:flutter/cupertino.dart';

class PageManager{
  PageController _pageController;
  int page = 0;

  PageManager(this._pageController){
    page = _pageController.initialPage;
  }

  void setPage(int value){
    if(value == page) return;
    page = value;
    _pageController.jumpToPage(value);
  }
}