import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/date_picker_provider.dart';


class Date_PickerScreen extends StatelessWidget {
  const Date_PickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Date Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1987),
                    lastDate: DateTime(2030))
                    .then((value) => Provider.of<DatePickerProvider>(context,listen: false)
                    .ChangeDatePick(value));
              },
              child: Text('Date Picker'),
            ),
          ),
          Text(
            Provider.of<DatePickerProvider>(context).dateselect.toString(),
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}