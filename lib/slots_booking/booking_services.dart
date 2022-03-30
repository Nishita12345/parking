import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:parking/slots_booking/user_controller.dart';

import 'booking.dart';

class BookingServices {
  UserController userController = Get.find();
  CollectionReference bookingCollection = FirebaseFirestore.instance
      .collection("Location")
      .doc("Nanpura")
      .collection("Bookings");

  Future<List<BookingModel>> getBookings() async {

    List<BookingModel> listOfBookings= [];

    return listOfBookings;

  }
}