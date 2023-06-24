import 'package:coffey/components/productsConatiner.dart';
import 'package:coffey/components/teaListSideBarContainer.dart';
import 'package:coffey/productClass.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ProductsCategories extends StatelessWidget {
  const ProductsCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoriesSideBarContainer(),
        SizedBox(
          width : 18,
        ),
        Expanded(
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              mainAxisSpacing: 8,
            ),
            itemCount: ProductList.length,
            itemBuilder: (context, index) {
              return ProductContainer(index: index,);
            },
          ),
        ),
      ],
    );

    //   Padding(
    //   padding: EdgeInsets.only(top: 16),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       CategoriesSideBarContainer(),
    //       SizedBox(
    //         width: 10,
    //       ),
    //       ProductContainer(),
    //       ProductContainer(),
    //       Container(
    //         child: GridView.builder(
    //           shrinkWrap: true,
    //           physics: NeverScrollableScrollPhysics(),
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 2,
    //             childAspectRatio: 1,
    //             crossAxisSpacing: 8,
    //             mainAxisSpacing: 8,
    //           ),
    //           itemCount: 10,
    //           itemBuilder: (context, index) {
    //             return ProductContainer();
    //           },
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
