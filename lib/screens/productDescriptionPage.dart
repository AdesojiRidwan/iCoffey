import 'package:coffey/colors.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                padding: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    color: coffeeLight,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'images/coffee1.jpg',
                      ),
                    ),

                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: white, borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: iconColor,
                      ),
                    ),
                    Text(
                      'Cappucino',
                      style: TextStyle(
                          color: white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: white, borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.shopping_cart_checkout,
                        color: iconColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60,bottom: 30),
              child: Text(
                'Coffee Size',
                style: TextStyle(
                    color: coffeeDark, fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.local_drink_outlined,color: coffeeRed,),
                    ),
                    Text(
                      'Small',
                      style: TextStyle(
                          color: coffeeDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: white, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.local_drink_outlined,size: 36,color: coffeeRed,),
                    ),
                    Text(
                      'Medium',
                      style: TextStyle(
                          color: coffeeDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: white, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.local_drink_outlined,size: 46,color: coffeeRed,),
                    ),
                    Text(
                      'Large',
                      style: TextStyle(
                          color: coffeeDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        // ClipPath(
        //   clipper: CustomClipPath(),
        //   child: Container(
        //     color: Colors.red,
        //     height: (MediaQuery.of(context).size.height / 3).toDouble() ,
        //     width: MediaQuery.of(context).size.width,
        //     child: Text('Hello'),
        //   ),
        // )

      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    
    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5,
      h - 100,
      w,
      h,
    );
    // path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

// class MyCurvePainter extends CustomPainter{
//   @override
//   void paint(Canvas canvas,Size size){
//     Paint paint = Paint()
//     ..color = Colors.red
//     ..strokeWidth = 2.0;
//
//     double x1 = 100;
//     double y1 = size.height/2;
//     double x2 = 200;
//     double y2 = size.height/2;
//
//     Path path = Path()
//     ..moveTo(x1, y1)
//     ..quadraticBezierTo(x1 + 20, y1, (x1 + x2)/2, (y1 + y2)/2)
//     ..quadraticBezierTo(x2 - 20, y2, x2, y2);
//     canvas.drawPath(path, paint);
//
//   }
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }
