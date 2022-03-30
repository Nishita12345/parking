import 'package:flutter/material.dart';

class Tutorial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Tutorial'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Text('After signing up with the app you will get the dashboard page. There is a ‘menu’ button on the left side at the top of the page. There are so many options like location, user, event planning etc.  Detailed information about this option is given below:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 17.0,),
                Text('Location: 1.	Here you will get the different locations of the city for the parking of your vehicle with pricing details of each. You can click on ‘Reserve’ button and the slot booking page will get open.  '
                    '2.	Here you can book your slot with date and time(with starting time and ending time).'
            '  3.	And then you have to click on ‘proceed for payment’ button, where you can pay for your reserved slot online. After that you will get the payment receipt for your booking.'
            '  4.	You can click on the button ‘Go to map’, which is beside the ‘reserve’ button. By clicking ‘Go to map’ button, you will get the map to reach your parking destination from your location.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 17.0,),
                Text('User:'
                  '  1.	You can see your user profile here.'
                  '  2.	Your can save your most used parking spots in the favourites.'
                  '  3.	You can see your previous bookings here.'
                  '  4.	You can also see your payment history here.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 17.0,),
                Text('Event planning :'
                    '  In the event planning section, you can plan your own event, and get notification when the day arrives.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 17.0,),
                Text('Contact us :   And you can contact us for any query you have, by clicking on the ‘contact us’ option.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
