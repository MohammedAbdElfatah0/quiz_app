import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/strings_value.dart';

class CustemTextLogo extends StatelessWidget {
  const CustemTextLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringsValue.kStringLogo,
      style:
          TextStyle(color: ColorManager.kPrimaryColor, fontSize: FontSize.k200),
    );
  }
}
