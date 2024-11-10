import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard/buttons.dart';
import 'package:keyboard/popup_account.dart';
import 'package:keyboard/test.dart';

// var orientation_text = ScreenUtil().orientation == Orientation.portrait ? 1 : 0;

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) {
          return MaterialApp(
            home: Screen1Page(),
          );
        });
  }
}

class Screen1Page extends StatefulWidget {
  @override
  _Screen1PageState createState() => _Screen1PageState();
}

class _Screen1PageState extends State<Screen1Page> {
  var items1 = buttons1(orientation_text);
  var items2 = buttons2(orientation_text);
  var items3 = buttons3(orientation_text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: const Text('Key'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.rotate_90_degrees_ccw_rounded),
              tooltip: 'Set Address',
              onPressed: () {
                /// //////////popup per salvare l'ip

                setState(() {
                  orientation_text = orientation_text == 1 ? 0 : 1;
                  items1 = buttons1(orientation_text);
                  items2 = buttons2(orientation_text);
                  items3 = buttons3(orientation_text);
                  // orientation_text = orientation_text == 1 ? 0 : 1;
                });

                /// //////////////////////
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Set Address',
              onPressed: () {
                /// //////////popup per salvare l'ip

                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => PopUpAccount());

                /// //////////////////////
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            /// ///////////////////////////////////////////////////////////
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 5, left: 10),
                child: ReorderableListView(
                  children: <Widget>[
                    for (final item in items1)
                      Container(key: ValueKey(item), height: 100, child: item),
                  ],
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = items1.removeAt(oldIndex);
                      items1.insert(newIndex, item);
                    });
                  },
                ),
              ),
            ),

            /// /////////////////////////////////////////////////////////////
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 5, left: 5),
                child: ReorderableListView(
                  children: <Widget>[
                    for (final item in items2)
                      Container(key: ValueKey(item), height: 100, child: item),
                  ],
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = items2.removeAt(oldIndex);
                      items2.insert(newIndex, item);
                    });
                  },
                ),
              ),
            ),

            /// //////////////////////////////////////////////////////////////
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 10, left: 5),
                child: ReorderableListView(
                  children: <Widget>[
                    for (final item in items3)
                      Container(key: ValueKey(item), height: 100, child: item),
                  ],
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = items3.removeAt(oldIndex);
                      items3.insert(newIndex, item);
                    });
                  },
                ),
              ),
            ),

            /// //////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
