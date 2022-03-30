import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'event_class.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  late String titleInput;
  late String amountInput;
  late DateTime _selectedDate = DateTime.now();

  void _presentDatePicker() {
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(),
    lastDate: DateTime(2022)).then((pickedDate) {
      if(pickedDate == null){
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
    print('...');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(decoration: InputDecoration(labelText: 'Title'),
                onChanged: (val) {
                  titleInput=val;
                },
              ),
              TextField(decoration: InputDecoration(labelText: 'Number'),
                onChanged: (val) {
                  amountInput=val;
                },
              ),
              Container(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(_selectedDate == null ? 'No date chosen'
                          : DateFormat.yMd().format(_selectedDate),
                      ),
                    ),
                    FlatButton(
                      textColor: Theme.of(context).primaryColor,
                      onPressed: _presentDatePicker,
                      child: Text('Choose date', style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {

                  if(titleInput.isEmpty || amountInput.isEmpty)
                  {
                    return;
                  }
                  widget.addTx(titleInput, double.parse(amountInput), _selectedDate,);
                  Navigator.of(context).pop();
                },
                child: Text('Add Event'),
                textColor: Colors.white,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
