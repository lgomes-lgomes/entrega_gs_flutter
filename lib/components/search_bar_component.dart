import 'package:app_global_solution/components/search_input_component.dart';
import 'package:app_global_solution/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final void Function(String) onChanged;
  final VoidCallback onPressed;

  const CustomSearchBar({
    super.key,
    required this.onChanged,
    required this.onPressed,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appPrimaryColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SearchInputComponent(
              hint: 'Buscar imagem no histórico',
              onChanged: onChanged,
            ),
          ),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.appSecondaryColor,
            ),
            child: const Text('BUSCAR'),
          ),
        ],
      ),
    );
  }
}
