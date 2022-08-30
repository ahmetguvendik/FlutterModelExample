import 'package:flutter/material.dart';

import '../model/on_board_model.dart';

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({Key? key, required this.model}) : super(key: key);
  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(model.title),
        Text(model.subtitle),
        Image.asset(model.imageWithPath),
      ],
    );
  }
}
