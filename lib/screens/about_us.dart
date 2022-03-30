import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('About Us'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset('images/image8.jpg'),
            SizedBox(height: 20,),
            Card(
              child: Text('ParkPort is a mobile-web based application developed by us, for both android and ios users. It will '
                  'help the users to not only find the proper location of parking required by them, but also reserve '
                  'spots as per their required duration, and make payment hassle free',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
