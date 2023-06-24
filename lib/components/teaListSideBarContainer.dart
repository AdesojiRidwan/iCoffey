import 'package:flutter/material.dart';

import '../colors.dart';
import '../productClass.dart';

class CategoriesSideBarContainer extends StatelessWidget {
  const CategoriesSideBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 0),
      width: 56,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: coffeeRed,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(42),),),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: CategoriesTitles.length,
            itemBuilder: (BuildContext context,int index){
              return ListTile(title: Transform.rotate(
                angle: 0,
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Text(
                        CategoriesTitles[index],
                        style: TextStyle(
                            color: coffeeLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              ),);
            },
          )
        ],
      ),
    );
  }
}
