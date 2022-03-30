import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date
  });
}



class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final deleteTx;

  TransactionList(this.transactions, this.deleteTx);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: transactions.map( (tx) {
            return Card(
              child: Row(children: [
                Container(
                  margin : EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(border: Border.all(
                    color: Colors.pink,
                    width: 1.5,
                  ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: FittedBox(
                    child: Text(
                      tx.amount.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat('yyyy-MM-dd').format(tx.date),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 70,
                ),
                MediaQuery.of(context).size.width > 360 ? FlatButton.icon(
                  icon: Icon(Icons.delete),
                  label: Text('Delete'),
                  textColor: Theme.of(context).errorColor,
                  onPressed: () => deleteTx(tx.id),
                )
                    : IconButton(
                  onPressed: () => deleteTx(tx.id),
                  icon: Icon(Icons.delete),
                  color: Theme.of(context).errorColor,
                ),
              ],),
            );
          }).toList(),
        ),
      ),
    );
  }
}
