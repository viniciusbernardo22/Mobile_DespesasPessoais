import 'package:despesas/components/transaction_list.dart';
import 'package:despesas/components/transaction_user.dart';
import 'package:despesas/components/transation_form.dart';
import 'package:despesas/models/transaction.dart';
import 'package:flutter/material.dart';

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
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Despesas Pessoais',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: null,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            //Capacidade máxima da tela? equivalente ao width 100%
            width: double.infinity,
            child: Card(
              child: Text('Gráfico'),
              elevation: 5,
              //Elevation -  sombreamento
            ),
          ),
          TransactionUser()
        ],
      ),
    );
  }
}

class _transaction {}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Text('Versão Inicial'),
      ),
    );
  }
}
