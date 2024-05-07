import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomActionSheet extends StatelessWidget {
  const BottomActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: const Text('Archive'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  height: 0,
                ),
                ListTile(
                  title: const Text('Delete'),
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Alert'),
                          content:
                              const Text('Are you sure you want to delete?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'OK',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  height: 0,
                ),
                ListTile(
                  title: const Text('Clear'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel')),
                    ],
                  ),
                ),
              ],
            ),
          )
        : CupertinoActionSheet(
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ),
            title: const Text('Chat'),
            message: const Text('Please select the option'),
            actions: <CupertinoActionSheetAction>[
              CupertinoActionSheetAction(
                isDefaultAction: true,
                child: const Text(
                  'Archive',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoActionSheetAction(
                child: const Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () async {
                  await showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          title: const Text('Alert'),
                          content:
                              const Text('Are you sure ypu want to delete'),
                          actions: <Widget>[
                            CupertinoDialogAction(
                              isDefaultAction: true,
                              child: const Text(
                                'Cancel',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoDialogAction(
                              child: const Text(
                                'OK',
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                  Navigator.pop(context);
                },
              ),
              CupertinoActionSheetAction(
                child: const Text(
                  'Clear',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
  }
}
