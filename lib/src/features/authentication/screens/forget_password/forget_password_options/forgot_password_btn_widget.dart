import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwise/src/constants/colors.dart';

import '../../../../../constants/sizes.dart';

class ForgotPasswordBtnWidget extends StatelessWidget {
  const ForgotPasswordBtnWidget({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    super.key,
  });
  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize-5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(tDefaultSize-20),
          color: isDarkMode ? theme.cardColor : Colors.grey.shade200,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                Icon(btnIcon, size: 70.0, color: isDarkMode ? tSecondaryColor : tAccentColor,),
                SizedBox(width: 30.0),
                    // Text(title,style: Theme.of(context).textTheme.headline6),
                    Text(subTitle,style: Theme.of(context).textTheme.headline6, textAlign: TextAlign.center,),
          ],
        ),
        // child: Row(
        //   children: [
        //     Icon(btnIcon, size: 60.0),
        //     SizedBox(width: 10.0),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(title,style: Theme.of(context).textTheme.headline6),
        //         Text(subTitle,style: Theme.of(context).textTheme.bodyText2),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}