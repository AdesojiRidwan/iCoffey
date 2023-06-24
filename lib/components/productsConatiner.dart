import 'package:flutter/material.dart';

import '../colors.dart';
import '../productClass.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({Key? key, required this.index}) : super(key: key);
  final index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 45,
          child: Container(
            padding: EdgeInsets.only(top: 60,left: 20),
            width: 150,
            height: 230,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(24)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ProductList[index].coffeeName,
                  style: TextStyle(
                    color: coffeeDark,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  ProductList[index].additionalIng,
                  style: TextStyle(
                    color: coffeeLight
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                 'NGN ${ ProductList[index].price}',
                  style: TextStyle(
                    color: coffeeDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: yellow,),
                    SizedBox(width: 5,),
                    Text(
                      ProductList[index].ratings.toString(),
                      style: TextStyle(
                        color: coffeeDark
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    Container(
                      width: 60,
                      height: 53,
                      decoration: BoxDecoration(
                        color: coffeeRed,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(24),
                            topLeft: Radius.circular(24)
                          )
                      ),
                      child: Icon(Icons.shopping_cart,color: coffeeLight,size: 28,),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 31,
          child: CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage(ProductList[index].imageAddress),
          ),
        )
      ],
    );
  }
}
