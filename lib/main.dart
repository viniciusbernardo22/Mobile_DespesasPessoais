import 'package:despesas/components/transation_form.dart';
import 'package:flutter/material.dart';

import 'dart:math';
import './components/transation_form.dart';
import './components/transaction_list.dart';
import 'models/transaction.dart';

main() => runApp(DespesasApp());
//Primeiro rodo o despesasapp e vejo as instruções que preciso seguir por ali.

class DespesasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quais funcionalidades preciso para meu app? O materialapp vai decidir
      home: Home(),

      //Home? Vou renderizar o widget Home.
      //Login? Vou para o login primeiro então.
    );
  }
}

//Widget do home
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForm(_addTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Despesas Pessoais',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _openTransactionFormModal(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              //Capacidade máxima da tela? equivalente ao width 100%
              width: double.infinity,
              child: const Card(
                child: Text('Gráfico'),
                elevation: 5,
                //Elevation -  sombreamento
              ),
            ),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
