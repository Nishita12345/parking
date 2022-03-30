import 'package:flutter/material.dart';
import '../screens/favorites.dart';
import '../screens/payment_history.dart';
import '../booking_task/bookings.dart';
import 'user_profile.dart';

class User extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('User Profile'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.5), BlendMode.dstATop),
    image: AssetImage('images/image3.jpg'),
    fit: BoxFit.cover,
        ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 60,),
       FlatButton(
          color: Colors.indigo,
          onPressed: (){
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => UserProfilePage()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 20,),
                Text('User Profile',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
          SizedBox(height: 20,),
          FlatButton(
              color: Colors.indigo,
              onPressed: (){
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Favorites()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 20,),
                    Text('Favourites',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(height: 40,),
          FlatButton(
            color: Colors.indigo,
            onPressed: (){
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Bookings()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(Icons.book_online),
                  SizedBox(width: 20,),
                  Text('My Bookings',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
           FlatButton(
              color: Colors.indigo,
              onPressed: (){
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new PaymentHistory()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.payment),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Text('Payment History',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(height: 20,),
        ],
      ),
    ),
    );
  }
}
