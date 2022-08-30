import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/constant/text/project_text.dart';
import 'package:untitled/model/on_board_model.dart';
import 'package:untitled/widget/onboard_card.dart';
import '../constant/padding/project_padding.dart';
import '../viewModel/onboard_view_model.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends OnBoardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: ProjectPadding.paddingAll,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: OnBoardModels.items.length,
                  itemBuilder: (context, index) {
                    return OnBoardCard(model: OnBoardModels.items[index]);
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabPageSelector(
                  controller: tabController,
                ),
                _FloatingActionButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  FloatingActionButton _FloatingActionButton() {
    return FloatingActionButton(
        onPressed: incrementAndChange,
        child: isLastIndex ? Text(ProjectText.start) : Text(ProjectText.next));
  }

  AppBar _appBar() {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [TextButton(onPressed: () {}, child: Text(ProjectText.skip))],
      leading: isFirstIndex
          ? null
          : IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.grey,
              )),
    );
  }
}
