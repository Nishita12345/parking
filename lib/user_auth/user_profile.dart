import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

 class UserProfilePage extends StatelessWidget {


   @override
   Widget build(BuildContext context) {

     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.pink,
         title: Text('User Profile'),
       ),
         body: SafeArea(
           child: Column(

             children: [
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.teal,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   height: 200,
//                   child: Container(
//                     alignment: Alignment(0.0,2.5),
//                     child: CircleAvatar(
//                       backgroundColor: Colors.amberAccent,
//                       radius: 60.0,
//                     ),
//                   ),
//                 ),
//               ),
//
//               SizedBox(
//                 height: 60,
//               ),
              Text('user profile',
                     style: TextStyle(
                   fontSize: 25.0,
                   color:Colors.blue,
                   letterSpacing: 2.0,
                   fontWeight: FontWeight.w400
               ),
              ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Surat, India"
//                 ,style: TextStyle(
//                   fontSize: 18.0,
//                   color:Colors.black,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.bold,
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "nishitapandya123@gmail.com"
//                 ,style: TextStyle(
//                   fontSize: 15.0,
//                   color:Colors.black,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.bold,
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Card(
//                   margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
//
//                   elevation: 2.0,
//                   child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
//                       child: Text("Customer",style: TextStyle(
//                           letterSpacing: 2.0,
//                           fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),))
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   RaisedButton(
//                     onPressed: (){
//
//                     },
//                     shape:  RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0),
//                     ),
//                     child: Ink(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [Colors.pink,Colors.redAccent]
//                         ),
//                         borderRadius: BorderRadius.circular(30.0),
//
//                       ),
//                       child: Container(
//                         constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Add Address",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12.0,
//                               letterSpacing: 2.0,
//                               fontWeight: FontWeight.w300
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   RaisedButton(
//                     onPressed: (){
//
//                     },
//                     shape:  RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0),
//                     ),
//                     child: Ink(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [Colors.pink,Colors.redAccent]
//                         ),
//                         borderRadius: BorderRadius.circular(80.0),
//
//                       ),
//                       child: Container(
//                         constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Edit details",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12.0,
//                               letterSpacing: 2.0,
//                               fontWeight: FontWeight.w300
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               )
             ],
          ),
         ),
    );
  }
 }