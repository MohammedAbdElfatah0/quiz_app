import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';

class CustemStatusAnswerScreen extends StatelessWidget {
  const CustemStatusAnswerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        margin: const EdgeInsets.only(left: 7),
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 5, spreadRadius: -5, offset: Offset(0, 10)),
            ],
            color: ColorManager.kGreenColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                'In what year did the United States host the FIFA World Cup for the first time?',
                style: GoogleFonts.baloo2(
                    color: ColorManager.kLightWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: -10,
                      offset: Offset(5, 12),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kWhiteColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(
                        CupertinoIcons.check_mark_circled_solid,
                        color: ColorManager.kPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        'data',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.baloo2(
                            color: ColorManager.kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
