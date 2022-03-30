import 'package:flutter/material.dart';
import 'package:parking/booking_task/reservation.dart';
import 'location_detail.dart';
import 'package:provider/provider.dart';
import 'booking_locations.dart';
import 'bookings.dart';
import 'location.dart';

class LocationItem extends StatelessWidget {

  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {

    final booking = Provider.of<BookingLocation>(context);
    final cart = Provider.of<Bookings>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
              arguments: booking.id,
            );
          },
          child: Image.asset(booking.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<BookingLocation>(
            builder: (ctx, booking, _) => IconButton(
              icon: Icon(
                booking.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Colors.red,
              onPressed: () {
                booking.toggleFavoriteStatus();
              },
            ),
            child: Text('Never changes'),
          ),
          title: Text(
            booking.title,
            textAlign: TextAlign.center,
          ),
          trailing: FlatButton(

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reservation()),
              );
              }, child: Text('Book slot'),
          ),
        ),
      ),
    );
  }
}