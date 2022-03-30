import 'package:flutter/material.dart';
import 'package:parking/booking_task/booking_locations.dart';
import 'package:parking/booking_task/reservation.dart';
import 'location.dart';
import 'package:provider/provider.dart';
import 'location_grid.dart';
import 'location_list.dart';

class ProductDetailScreen extends StatelessWidget {

  // final String title;

  // ProductDetailScreen(this.title);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {

    final bookingId = ModalRoute.of(context)!.settings.arguments as String;
    final booking = Provider.of<LocationList>(context, listen: false,).findById(bookingId);

    return Scaffold(
      appBar: AppBar(
        title: Text(booking.title),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Image.asset(booking.imageUrl)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('Parking spot : '),
                          Text(booking.id),
                          SizedBox(height: 5,),
                          Text('Cost = Rs '+ booking.price.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(booking.title),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Reservation()),
                      );

                    },
                      child: Text('Reserve'),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {},
                      child: Text('Go to Map'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),




        // Column(
        //   children: [
        //     Container(height: 300, width: double.infinity,
        //       child: Image.asset(booking.imageUrl,
        //         fit: BoxFit.cover,
        //       ),),
        //     SizedBox(height: 10,),
        //     Text('\$${booking.price}', style: TextStyle(
        //       color: Colors.grey,
        //       fontSize: 20,
        //     ),),
        //     SizedBox(height: 10,),
        //     Container(
        //       padding: EdgeInsets.symmetric(horizontal: 10),
        //       width: double.infinity,
        //       child: Text(booking.description, textAlign: TextAlign.center,
        //         softWrap: true,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}