import 'package:e_commerce_app/cart.dart';
import 'package:e_commerce_app/home.dart';
import 'package:e_commerce_app/like.dart';
import 'package:e_commerce_app/profile.dart';
import 'package:flutter/material.dart';

class BtmNaviBar extends StatefulWidget {
  const BtmNaviBar({ Key key }) : super(key: key);

  @override
  _BtmNaviBarState createState() => _BtmNaviBarState();
}

class _BtmNaviBarState extends State<BtmNaviBar> {
  int _currentIndex = 0;
  final tabs = [
    Home(),
    Like(),
    Cart(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ecom App UI'),
          actions: [IconButton(icon: Icon(Icons.notifications), onPressed: (){})],          
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
          ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.search),
          elevation: 20,
          backgroundColor: Colors.blue,
          onPressed: (){},
          
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: tabs[_currentIndex],
      );
  }
}