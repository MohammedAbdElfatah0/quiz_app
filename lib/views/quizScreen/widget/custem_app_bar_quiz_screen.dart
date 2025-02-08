import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/strings_value.dart';

class CustemAppBarQuizzScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustemAppBarQuizzScreen({
    super.key,
    required this.onTap,
    required this.outPutQuestionNow,
  });
  final Function() onTap;
  final Stream<String> outPutQuestionNow;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 120,
      leading: InkWell(
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: ColorManager.kPrimaryColor,
              ),
              Text(
                StringsValue.kPrevious,
                style: TextStyle(
                    color: ColorManager.kPrimaryColor,
                    fontSize: FontSize.k12,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
      title: StreamBuilder<String>(
        stream: outPutQuestionNow,
        builder: (context, snapshot) {
          return Text(
            snapshot.data==null?'':snapshot.data!,
            style: const TextStyle(
                fontSize: FontSize.k18, fontWeight: FontWeight.bold),
          );
        }
      ),
      centerTitle: true,
      backgroundColor: ColorManager.kLightWhiteColor,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
