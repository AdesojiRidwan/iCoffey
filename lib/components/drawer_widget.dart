import 'package:coffey/colors.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: coffeeRed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/coffee1.png'),
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Adesoji Ridwanullahi',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  'ridwanullahiolaoluwa759@gmail.com',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.home,
              color: iconColor,
              size: 26,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color:coffeeRed,),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: iconColor,
              size: 26,
            ),
            title: Text(
              'My Account',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: coffeeRed),
            ),
          ),
          GestureDetector(
            onTap: (){
          //    Navigator.pushNamed(context, CartPage.id);
            },
            child: ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: iconColor,
                size: 26,
              ),
              title: Text(
                'My orders',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: coffeeRed),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.location_city,
              color: iconColor,
              size: 26,
            ),
            title: Text(
              'Location',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: coffeeRed),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: iconColor,
              size: 26,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: coffeeRed),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: iconColor,
              size: 26,
            ),
            title: Text(
              'Log Out',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: coffeeRed,),
            ),
          ),
        ],
      ),
    );
  }
}
