import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../android/provider/date_picker_provider.dart';

class DatePickerScreen extends StatelessWidget {
  const DatePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Ios Date Picker'),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              height: 300,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  (Provider.of<DatePickerProvider>(context, listen: false)
                      .ChangeDatePick(value));
                },
              ),
            ),
            Text(
              Provider.of<DatePickerProvider>(context).dateselect.toString(),
              style: TextStyle(fontSize: 25),
            )
          ],
        ));
  }
}