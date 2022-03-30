import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about_us.dart';
import 'contact_us.dart';
import '../booking_task/location.dart';
import '../user_auth/user.dart';
import 'eventclass/event.dart';
import 'tutorial.dart';

class DrawerNavigationPage extends StatefulWidget {

  @override
  State<DrawerNavigationPage> createState() => _DrawerNavigationPageState();
}

class _DrawerNavigationPageState extends State<DrawerNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                child: Text('Hello User', style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: const Text('Location'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Location()),
                  );
                },
              ),
            ),
            Card(
              color : Colors.amberAccent,
              child: ListTile(
                title: const Text('User'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new User()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: const Text('Event Planning'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Event()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: const Text('About us'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new AboutUs()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: const Text('Contact us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: const Text('Tutorial'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => Tutorial()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage('images/image7.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 60,),
              Expanded(child: Image.asset('images/image9.jpg'),),
              SizedBox(height: 50,),
              Expanded(child: Image.asset('images/image10.jpg'),),
              SizedBox(height: 50,),
              Expanded(child: Image.asset('images/image11.jpg'),),
              SizedBox(height: 50,),
            ],
      ),
        ),
    ),
    );
  }
}
