import 'package:flutter/material.dart';
import 'package:quiz/controller/on_boarding/on_boarding_controller.dart';
import 'package:quiz/core/resources/const_value.dart';
import '../widget/custem_botton_bar_on_boarding_screen.dart';
import '../widget/custem_item_page_view_on_boarding.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late OnBoardingController _onBoardingController;
  @override
  void initState() {
    super.initState();
    _onBoardingController = OnBoardingController();
  }

  @override
  void dispose() {
    super.dispose();
    _onBoardingController.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustemBottonBarOnboardingscreen(
        onTapSkip: () {
          _onBoardingController.onTapSkip(context: context);
        },
        onTapNext: () {
          _onBoardingController.onTapNext(context);
        },
        outPutDotIndecator: _onBoardingController.outPutDataDotIndicator,
        dotsCount: ConstValue.onBoardingListConst.length,
        outPutDotTextStart: _onBoardingController.outPutDataStartText,
        onTapDotIndecator: (index) {
          _onBoardingController.isTappedDotIndicator = true;
          _onBoardingController.onTapDotIndicator(index);
        },
      ),
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (value) {
            if (_onBoardingController.isTappedDotIndicator == true) {
              if (_onBoardingController.onBoardingPageviewController.page!
                      .round() ==
                  _onBoardingController.currentPositionPage) {
                _onBoardingController.isTappedDotIndicator = false;
              }
            } else {
              _onBoardingController.onTapDotIndicator(value);
            }
          },
          controller: _onBoardingController.onBoardingPageviewController,
          itemCount: ConstValue.onBoardingListConst.length,
          itemBuilder: (context, index) => SingleChildScrollView(
            child: CustemItemPageViewOnBoarding(
              onBoardingScreenModel: ConstValue.onBoardingListConst[index],
            ),
          ),
        ),
      ),
    );
  }
}
