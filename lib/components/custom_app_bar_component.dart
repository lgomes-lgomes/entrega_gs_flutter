import 'package:app_global_solution/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String? text;
  final bool hasBackButton;
  final VoidCallback? backButtonPressed;
  final PreferredSizeWidget? bottom;

  CustomAppBar({
    super.key,
    this.text,
    this.backButtonPressed,
    this.hasBackButton = false,
    this.bottom,
  }) : preferredSize = Size.fromHeight(
            bottom == null ? kToolbarHeight : kToolbarHeight * 2.5);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appPrimaryColor,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      title: text == null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'IMG',
                  style: const TextStyle(
                    color: Color(0xffFDFDFD),
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ).copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          : Text(
              'IMG',
              style: const TextStyle(
                color: Color(0xffFDFDFD),
                fontStyle: FontStyle.normal,
                fontSize: 16,
              ).copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
      leading: hasBackButton
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xffFDFDFD),
              ),
            )
          : Container(),
      bottom: bottom,
    );
  }
}
