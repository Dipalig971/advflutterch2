import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetScreen extends StatelessWidget {
  const CupertinoActionSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CupertinoButton(
      onPressed: () {
        showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) {
            return CupertinoActionSheet(
              title: Text('Title',textAlign: TextAlign.start,),
              message: Text('Message',textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w700),),
              actions: [
                CupertinoActionSheetAction(
                  isDefaultAction:true,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Default Action',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Divider(),
                CupertinoActionSheetAction(
                  isDefaultAction:true,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Normal Action'),
                ),
                // Divider(),
                CupertinoActionSheetAction(
                  isDefaultAction:true,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Destruction Action',
                    style: TextStyle(color: CupertinoColors.destructiveRed),
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
            );
          },
        );
      },
      child: Center(
        child: Container(
          height: 60,
          width: 350,
          decoration:  BoxDecoration(
            // color: CupertinoColors.black,
            borderRadius: BorderRadius.all(Radius.circular(80)),
            border: Border.all(color: Colors.black,width: 1.5)
          ),
          child: const Center(
            child: Text(
              'Show CupertinoActionSheet',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    ));
  }
}
