import 'package:flutter/material.dart';

import '../colors.dart';

class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Icon(
        Icons.menu,
        color: coffeeRed,
      ),
    );
  }
}
