import 'package:despesas/models/transaction.dart';
import './transation_form.dart';
import './transaction_list.dart';
import '../models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: new DateTime.now(),
    ),
    Transaction(id: '2', title: 'Teclado', value: 412.11, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[TransactionList(_transactions), TransactionForm()],
    );
  }
}
