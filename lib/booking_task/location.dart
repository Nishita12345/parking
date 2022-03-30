import 'package:flutter/material.dart';
import 'package:parking/booking_task/booking_locations.dart';
import 'package:parking/booking_task/location_list.dart';
import 'package:parking/slots_booking/gridbooking.dart';
import 'package:provider/provider.dart';
import 'location_grid.dart';
import 'reservation.dart';

enum FilterOptions{
  Favorites,
  All,
}

class Location extends StatefulWidget {

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  Widget _appBarTitle = new Text('Search Location');
  Icon _searchIcon = new Icon(Icons.search);
  var _showOnlyFavorites = false;
  var _isInit = true;
  var _isloading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: _appBarTitle,
        actions: [
        IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
      PopupMenuButton(
        onSelected: (FilterOptions selectedValue) {
          setState(() {
            if (selectedValue == FilterOptions.Favorites) {
              _showOnlyFavorites = true;
            }
            else {
              _showOnlyFavorites = false;
            }
          });
        },
        itemBuilder: (_) =>
        [
          PopupMenuItem(
            child: Text('Only favorites'), value: FilterOptions.Favorites,),
          PopupMenuItem(child: Text('Show all'), value: FilterOptions.All,),
        ],
        icon: Icon(Icons.more_vert,),
      ),
      ],
    ),
      body:

        Container(
         child: SingleChildScrollView(
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   child: Column(
                    children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                               ClipRect(child: Expanded(child: Image.asset('images/image4.jpg'))),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                   children: [
                                    Text('Parking spot 1'),
                                     SizedBox(height: 5,),
                                     Text('Cost = Rs. 10.0'),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                       ),
                       Text('SMC Parking, Nanpura'),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             ElevatedButton(onPressed: () {
                               Navigator.push(
                                 context,
                                 new MaterialPageRoute(builder: (context) => new GridBooking()),
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
               ),

             ],
           ),
         ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  void _searchPressed() {
    setState(() {
      if(this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          decoration: new InputDecoration(
            prefixIcon: new Icon(Icons.search),
            hintText: 'Search...'
          ),
        );
      }
      else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Search Location');
      }
    });
  }
}
