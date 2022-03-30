import 'package:flutter/material.dart';
import 'drawer_page.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(''),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop ),
            image: AssetImage('images/image1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox( height: 60.0 ,),
            Text('ParkPort', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF061E32),
              fontSize: 40.0,
            ),
            ),
            SizedBox( height: 80.0 ,),
            Text(
              'Best Parking Service with accurate navigation and convinient payment', style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox( height: 80.0 ,),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DrawerNavigationPage()),
              );
            },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF370A3E),
              ),
              child: Text('Let\'s get started'),
            ),
          ],
        ),
      ),
    );
  }
}
