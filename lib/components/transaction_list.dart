import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../main.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.purple.shade300, width: 2)),
                padding: EdgeInsets.all(10),
                child: Text(
                  'R\$ ${tr.value.toStringAsFixed(2)}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue),
                  ),
                  Text(
                    DateFormat('dd/MM/y - hh:mm:ss a').format(tr.date),
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color.fromARGB(255, 154, 153, 153),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
