import 'package:coffey/colors.dart';
import 'package:flutter/material.dart';

import '../components/appBar-widget.dart';
import '../components/drawer_widget.dart';
import '../components/productsCategories.dart';
import '../components/teaListSideBarContainer.dart';
import '../components/welcometext.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            'StarCoffee',
            style: TextStyle(
                color: coffeeDark, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        leading: LeadingAppBar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: coffeeRed,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18,),
                WelcomeText(),
                SizedBox(height: 32,),
                ProductsCategories(),
              ],
            ),
          ),
        ),
      ),
      // bottomSheet: Container(
      //   height: 70,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     color: coffeeDark,
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(10),
      //       topRight: Radius.circular(10)
      //     )
      //   ),
      //   child: Row(
      //     children: [
      //       Icon(Icons.shopping_cart,color: backgroundColor,size: 26,),
      //       Icon(Icons.search),
      //       Icon(Icons.home),
      //       Icon(Icons.settings),
      //       Icon(Icons.person)
      //     ],
      //   ),
      // ),
    );
  }
}
