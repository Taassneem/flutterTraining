import 'package:flutter/material.dart';

class HomeFeature extends StatelessWidget {
  const HomeFeature({
    super.key,
    required this.name,
    required this.icon, this.onTap,
  });
  final String name;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Icon(
              icon,
              color: const Color(0xffB1BEBF),
            )
          ],
        ),
      ),
    );
  }
}
