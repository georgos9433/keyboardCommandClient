import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard/buttons.dart';
import 'package:keyboard/popup_account.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ); // To turn off landscape mode
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items1 = buttons2;
  final items2 = buttons1;
  final items3 = buttons3;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: const Text('Key'),
          actions: <Widget>[
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
                padding: EdgeInsets.only(right: 5,left: 10),
                child: ReorderableListView(
                  children: <Widget>[
                    for (final item in items1)
                      Container(
                        key: ValueKey(item),
                        height: 105,

                        child: item
                      ),
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
                padding: EdgeInsets.only(right: 5,left: 5),
                child: ReorderableListView(
                  children: <Widget>[
                    for (final item in items2)
                      Container(
                        key: ValueKey(item),
                        height: 105,

                        child: item
                      ),
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
                            padding: EdgeInsets.only(right: 10,left: 5),
                            child: ReorderableListView(
                              children: <Widget>[
                                for (final item in items3)
                                  Container(
                                    key: ValueKey(item),
                                    height: 105,

                                    child: item
                                  ),
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
