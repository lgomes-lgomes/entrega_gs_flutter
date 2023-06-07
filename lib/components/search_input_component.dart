import 'package:app_global_solution/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInputComponent extends StatelessWidget {
  final String? hint;
  final void Function(String) onChanged;

  const SearchInputComponent({
    super.key,
    required this.onChanged,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      cursorColor: AppColors.appPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontSize: 16,
        ).copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w100,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.appPrimaryColor,
          ),
        ),
        focusColor: AppColors.appPrimaryColor,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        filled: true,
        fillColor: const Color(0xffFEFEFE),
        prefixIcon: Container(
          alignment: Alignment.center,
          height: 48,
          width: 24,
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}
