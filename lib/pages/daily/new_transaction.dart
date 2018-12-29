import 'package:flutter/material.dart';
import 'package:ngen/pages/daily/transaction_form.dart';

class NewTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'INCOME'),
              Tab(text: 'EXPENSE'),
            ],
          ),
          title: Text('New'),
        ),
        body: TabBarView(
          children: [
            TransactionForm(),
            TransactionForm(),
          ],
        ),
      ),
    );
  }
}