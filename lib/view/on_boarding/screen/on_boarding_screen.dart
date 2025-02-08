import 'package:flutter/material.dart';
import 'package:quiz/controller/on_boarding/on_boarding_controller.dart';
import 'package:quiz/core/resources/const_values.dart';
import 'package:quiz/view/on_boarding/widgets/custom_bottom_nav_bar_on_boargin_screen.dart';

import '../widgets/custom_items_page_view_on_boarding_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late OnBoardingController _onBoardingController;
  bool tabbed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onBoardingController = OnBoardingController();
  }

  @override
  void dispose() {
    _onBoardingController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBarOnBoardgingScreen(
        onTapSkip: () {
          _onBoardingController.goToLoginPage(context: context);
        },
        outputDataTextStart: _onBoardingController.outPutDataStartText,
        onTapNext: () {
          _onBoardingController.onTabNext(context);
        },
        outputDataDotIndicator: _onBoardingController.outPutDataDotIndicator,
        onTapDotIndicator: (index) {
          _onBoardingController.isTappedDotIndicator = true;
          _onBoardingController.onTapDotIndicator(index);
        },
        dotCount: ConstValue.onBoardingListConst.length,
      ),
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (value) {
            if (_onBoardingController.isTappedDotIndicator == true) {
              if (_onBoardingController.onBoardgingPageViewController.page!
                      .round() ==
                  _onBoardingController.currentPositionPage) {
                _onBoardingController.isTappedDotIndicator = false;
              }
            } else {
              _onBoardingController.onTapDotIndicator(value);
            }
          },
          controller: _onBoardingController.onBoardgingPageViewController,
          itemCount: ConstValue.onBoardingListConst.length,
          itemBuilder: (context, index) => CustomItemsPageViewOnBoardingScreen(
            onBoardingScreenModel: ConstValue.onBoardingListConst[index],
          ),
        ),
      ),
    );
  }
}
