import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Items',
                style: TextStyle(
                  fontSize: 20,
                ),),
                Text('View More',
                style: TextStyle(
                  color: Colors.blue,
                ),),
              ],
            ),
          ),
        ],
        
      ),
      
    );
  }
}