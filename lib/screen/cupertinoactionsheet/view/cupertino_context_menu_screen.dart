import 'package:advflutterch2/utils/image_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuScreen extends StatelessWidget {
  const CupertinoContextMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 3 / 4),
            itemBuilder: (context, index) => GridViewContanier(
              ImagesList[index]['img'],
              ImagesList[index]['name'],
              ImagesList[index]['number'],
            ),
            itemCount: ImagesList.length,
          ))
        ],
      ),
    );
  }

  Widget GridViewContanier(String img, String name, String number) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: CupertinoContextMenu(
        actions: const [
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.doc_on_clipboard,
            child: Text('Copy'),
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.share,
            child: Text('Share'),
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.heart,
            child: Text('Favourite'),
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.photo_on_rectangle,
            child: Text('Show in All Photos'),
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.delete,
            child: Text('Remove',style: TextStyle(color: CupertinoColors.destructiveRed),),
          ),
        ],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          img,
                        ),
                        fit: BoxFit.cover)),
              ),
              Text(name),
              Text(number),
            ],
          ),
        ),
      ),
    );
  }
}
