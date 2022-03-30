import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:intl/intl.dart';
import 'checkout_details.dart';

class Reservation extends StatefulWidget {

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {

  bool _flag = true;
  late double _height;
  late double _width;

  late String _setTime, _setDate;

  late String _hour, _minute, _time;

  late String dateTime;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  get nn => null;

  get hh => null;

  String get val => val;

  get am => null;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour + ' : ' + _minute;
        _timeController.text = _time;
        _timeController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
  }

  @override
  void initState() {
    _dateController.text = DateFormat.yMd().format(DateTime.now());

    _timeController.text = formatDate(
        DateTime(2019, 08, 1, DateTime.now().hour, DateTime.now().minute),
        [hh, ':', nn, " ", am]).toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    dateTime = DateFormat.yMd().format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(' Reserve a spot'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Text('Book your spot'),
                    SizedBox(height: 8.0,),
                    Row(
                      children: [
                        SizedBox(width: 10.0,),
                        ElevatedButton(onPressed: () {
                        setState(() {
                          _flag = !_flag;
                        });
                        },
                            child: Text(''),
                        style: ElevatedButton.styleFrom(
                          primary: _flag ? Colors.blue : Colors.green,
                        ),
                        ),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                      ],
                    ),
                    SizedBox(height: 8.0,),
                    Row(
                      children: [
                        SizedBox(width: 10.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                      ],
                    ),
                    SizedBox(height: 8.0,),
                    Row(
                      children: [
                        SizedBox(width: 10.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                        SizedBox(width: 17.0,),
                        ElevatedButton(onPressed: () {},
                          child: Text(''),),
                      ],
                    ),
                    SizedBox(width: 8.0,),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: _width,
                height: _height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Choose Date',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        InkWell(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: Container(
                            width: _width / 1.7,
                            height: _height / 15,
                            margin: EdgeInsets.only(top: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            child: TextFormField(
                              style: TextStyle(fontSize: 30),
                              textAlign: TextAlign.center,
                              enabled: false,
                              keyboardType: TextInputType.text,
                              controller: _dateController,
                              onSaved: (var val) {
                                _setDate = val!;
                              },
                              decoration: InputDecoration(
                                  disabledBorder:
                                  UnderlineInputBorder(borderSide: BorderSide.none),
                                  // labelText: 'Time',
                                  contentPadding: EdgeInsets.only(top: 0.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Choose Starting Time (From)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        InkWell(
                          onTap: () {
                            _selectTime(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            width: _width / 1.7,
                            height: _height / 15,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            child: TextFormField(
                              style: TextStyle(fontSize: 30),
                              textAlign: TextAlign.center,
                              onSaved: (String) {
                                _setTime = val;
                              },
                              enabled: false,
                              keyboardType: TextInputType.text,
                              controller: _timeController,
                              decoration: InputDecoration(
                                  disabledBorder:
                                  UnderlineInputBorder(borderSide: BorderSide.none),
                                  // labelText: 'Time',
                                  contentPadding: EdgeInsets.all(5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Choose Ending Time (To)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        InkWell(
                          onTap: () {
                            _selectTime(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            width: _width / 1.7,
                            height: _height / 15,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            child: TextFormField(
                              style: TextStyle(fontSize: 30),
                              textAlign: TextAlign.center,
                              onSaved: (String) {
                                _setTime = val;
                              },
                              enabled: false,
                              keyboardType: TextInputType.text,
                              controller: _timeController,
                              decoration: InputDecoration(
                                  disabledBorder:
                                  UnderlineInputBorder(borderSide: BorderSide.none),
                                  // labelText: 'Time',
                                  contentPadding: EdgeInsets.all(5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckOut()),
                );
              },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF370A3E),
                ),
                child: Text('Proceed for payment'),),
            ],
          ),
        ),
      ),
    );
  }

  formatDate(DateTime dateTime, List list) {}
}