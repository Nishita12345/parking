import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parking/booking_task/booking_locations.dart';
import 'package:parking/booking_task/location_list.dart';
import 'package:parking/screens/welcome_page.dart';
import 'user_auth/auth.dart';
import 'user_auth/auth_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: Auth()),
    ChangeNotifierProxyProvider<Auth, LocationList>(update: (ctx, auth, previousLocationList)
    => LocationList(auth.token!, previousLocationList!.items),
    create: (ctx) => LocationList(Provider.of<Auth>(ctx, listen: false).token.toString(),Provider.of<LocationList>(ctx, listen: false).items),
    ),
    ],
      child: Consumer<Auth>(builder: (ctx, auth, _) =>
          MaterialApp(
            title: 'My Shop',
            theme: ThemeData(
              primarySwatch: Colors.purple,
              accentColor: Colors.deepOrange,
            ),
            home: auth.isAuth ? MyHomePage() : AuthScreen(),
          ),
      ),
    );
  }


}