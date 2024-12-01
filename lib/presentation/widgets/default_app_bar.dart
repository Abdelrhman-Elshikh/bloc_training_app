import '../../utils/constances/custom_colors.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: CustomColors.KYellow),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
              child: Text(
            'Characters',
            textAlign: TextAlign.start,
          )),
          Expanded(
            child: IconButton(
              alignment: Alignment.centerRight,
              onPressed: onPressed,
              icon: const Icon(
                Icons.search_outlined,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
