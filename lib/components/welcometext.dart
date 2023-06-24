import 'package:flutter/material.dart';

import '../colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome.',
            style: TextStyle(color: coffeeRed),
          ),
          Text(
            'Adesoji Ridwan',
            style: TextStyle(
                color: coffeeDark,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          )
        ],
      ),
    );
  }
}