import 'package:flutter/material.dart';
import 'event_class.dart';
import 'event_sheet.dart';

class Event extends StatefulWidget {

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {

  final List<Transaction> _userTransactions = [

  ];

  List<Transaction>get _recentTransactions{

    return _userTransactions.where( (tx) {
      return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7),
      )
      );
    } ).toList();
  }

  void _addNewTransaction(String txTitle, double txAmount, DateTime chosenDate){
    final newTx = Transaction(id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: chosenDate,
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _deleteTransactions(String id) {
    setState(() {
      _userTransactions.removeWhere((tx) {
        return tx.id == id;
      });
    });
  }

  void _startAddNewTransaction(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_) {
      return GestureDetector(
        onTap : () {},
        child :NewTransaction(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
      );
    });
  }




  @override
  Widget build(BuildContext context) {

    final txListWidget = Container(
        child: TransactionList(_userTransactions, _deleteTransactions));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(' My Events'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Card(
          child: txListWidget,
    ),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _startAddNewTransaction(context);
      },
        backgroundColor: Colors.pink,
        child: Icon(Icons.add),
      ),
    );
  }
}