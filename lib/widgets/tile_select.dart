import 'package:flutter/material.dart';

class TileSelect extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const TileSelect({super.key, required this.onTap, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25)),
                const Icon(Icons.chevron_right_outlined)
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
