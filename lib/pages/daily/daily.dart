import 'package:flutter/material.dart';
import 'package:ngen/pages/daily/new_transaction.dart';

class DailyPage extends StatelessWidget {
  void _openTransactionForm(context) {
    Navigator.push(
      context,
      MaterialPageRoute<bool>(
        builder: (context) => NewTransaction()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Daily Page')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openTransactionForm(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
