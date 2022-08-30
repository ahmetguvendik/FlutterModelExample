import 'package:flutter/material.dart';

import '../model/on_board_model.dart';
import '../view/on_board_view.dart';

abstract class OnBoardViewModel extends  State<OnBoardView> with TickerProviderStateMixin {
  late final TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: OnBoardModels.items.length, vsync: this);
  }

  void incrementAndChange() {
    if (selectedIndex == isLastIndex) {
      return;
    }
    IncrementSelectedIndex();
    changeIndicator(selectedIndex);
  }

  bool get isLastIndex => OnBoardModels.items.length - 1 == selectedIndex;

  bool get isFirstIndex => selectedIndex == 0;

  void changeIndicator(int value) {
    tabController.animateTo(value);
  }

  void IncrementSelectedIndex() {
    setState(() {
      selectedIndex++;
    });
  }
}