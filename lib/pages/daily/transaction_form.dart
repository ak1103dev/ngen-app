import 'package:flutter/material.dart';
import 'package:ngen/components/date_picker.dart';

class TransactionForm extends StatefulWidget {
  @override
  TransactionFormState createState() {
    return TransactionFormState();
  }
}

class TransactionFormState extends State<TransactionForm> {
  final _formKey = GlobalKey<FormState>();

  int amount = 0;
  String category = 'A';
  DateTime _fromDate = DateTime.now();
  String note = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: '0.00'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter number';
              }
            },
          ),
          DropdownButton<String>(
            value: category,
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (String val) {
              setState(() {
                category = val;
              });
            },
          ),
          DateTimePicker(
            selectedDate: _fromDate,
            selectDate: (DateTime date) {
              setState(() {
                _fromDate = date;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'note'
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('$amount\n$category\n$_fromDate\n$note')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
