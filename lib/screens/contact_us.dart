import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Contact Us'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                          child: Image.asset('images/image5.jpg'),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('Contact no : +91-xxxxxxxxxx, 0261-xxxxxxx', style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10,),
                          Text('Email : parkport@gmail.com', style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Column(
                  children: [
                    Text('Need any help?', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.indigo,
                    ),),
                    Text('Write your query/Provide Feedback',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.indigo,
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    ClipRect(child: Image.asset('images/image6.jpg', fit: BoxFit.fitWidth,),
                    ),
                    SizedBox(height: 8.0,),
                    Card(
                      color: Colors.teal,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20.0,),
                         TextField(
                           keyboardType : TextInputType.emailAddress,
                           decoration: InputDecoration(
                           filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: 'Enter your email id',
                        ),
                        ),
                            SizedBox(height: 8,),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                labelText: 'Enter your name',
                              ),
                            ),
                            SizedBox(height: 8,),
                            TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                labelText: 'Write your Query',
                              ),
                            ),
                            SizedBox(height: 8.0,),
                            ElevatedButton(onPressed: () {
                              showAlertDialog(context);
                            }, child: Text('Submit'),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    ),
    );
  }

   showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: Text('Ok'),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text('Done'),
      content: Text('Thank You. Your feedback/Query has been submitted'),
      actions: [
        okButton,
      ],
    );
    showDialog(context: context, builder: (BuildContext context) {
      return alert;
    },
    );
   }
}