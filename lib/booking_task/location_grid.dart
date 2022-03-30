import 'package:flutter/material.dart';
import 'package:parking/booking_task/location_list.dart';
import 'locations_item.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';
import 'location.dart';

class LocationGrid extends StatelessWidget {

  late final bool showFavs;

  LocationGrid(this.showFavs);


  @override
  Widget build(BuildContext context) {
    final locationsData =  Provider.of<LocationList>(context);
    final locations = showFavs ? locationsData.favoriteItems : locationsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10, mainAxisSpacing: 10,),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: locations[i],
        child: LocationItem(
          // Locations[i].id,// Locations[i].title,
          //Locations[i].imageUrl
        ),
      ),
    );
  }
}