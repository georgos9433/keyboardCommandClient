import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard/buttons.dart';
import 'package:keyboard/popup_account.dart';
import 'package:keyboard/test.dart';

// var orientation_text = ScreenUtil().orientation == Orientation.portrait ? 1 : 0;

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) {
          return MaterialApp(
            home: Screen2Page(),
          );
        });
  }
}

class Screen2Page extends StatefulWidget {
  @override
  _Screen2PageState createState() => _Screen2PageState();
}

class _Screen2PageState extends State<Screen2Page> {
  var items4 = buttons4(orientation_text);
  var items5 = buttons5(orientation_text);
  var items6 = buttons6(orientation_text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: const Text('Key2'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.rotate_90_degrees_ccw_rounded),
              tooltip: 'Set Address',
              onPressed: () {
                /// //////////popup per salvare l'ip

                setState(() {
                  orientation_text = orientation_text == 1 ? 0 : 1;
                  items4 = buttons4(orientation_text);
                  items5 = buttons5(orientation_text);
                  items6 = buttons6(orientation_text);

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
                    for (final item in items6)
                      Container(key: ValueKey(item), height: 100, child: item),
                  ],
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = items6.removeAt(oldIndex);
                      items6.insert(newIndex, item);
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
                    for (final item in items4)
                      Container(key: ValueKey(item), height: 100, child: item),
                  ],
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = items4.removeAt(oldIndex);
                      items4.insert(newIndex, item);
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
                    for (final item in items5)
                      Container(key: ValueKey(item), height: 100, child: item),
                  ],
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = items5.removeAt(oldIndex);
                      items5.insert(newIndex, item);
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
