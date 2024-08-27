import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:keyboard/popup_account.dart';

var url = Uri.parse('http://192.168.1.76:5000/key');
var urlCtrl = Uri.parse('http://192.168.1.76:5000/keyCtrl');
var urlShiftAlt = Uri.parse('http://192.168.1.76:5000/keyShiftAlt');

void main() => runApp(MyApp());

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
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            title: const Text('AppBar Demo'),
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
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // HapticFeedback.heavyImpact();
                  // send the POST request
                  var response = await http.post(url, body: '{');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      '{',
                      style: TextStyle(fontSize: 60),
                    )),
              ),
            ),

            /// ////////////////////colonna destra//////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(url, body: '}');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      '}',
                      style: TextStyle(fontSize: 60),
                    )),
              ),
            ),

            /// ///////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(url, body: '[');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      '[',
                      style: TextStyle(fontSize: 60),
                    )),
              ),
            ),

            /// ///////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(url, body: ']');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      ']',
                      style: TextStyle(fontSize: 60),
                    )),
              ),
            ),

            /// //////////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(urlCtrl, body: 'ctrl+z');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'ctrl+z',
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ),

            /// //////////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(urlCtrl, body: 'ctrl+y');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'ctrl+y',
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ),

            /// ///////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(urlCtrl, body: 'ctrl+/');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'ctrl+/',
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ),

            /// ///////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response =
                      await http.post(urlShiftAlt, body: 'shift+alt+a');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'shift+alt+a',
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ),

            /// ///////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(urlCtrl, body: 'ctrl+r');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'ctrl+r',
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ),

            /// ///////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  // send the POST request
                  var response = await http.post(urlCtrl, body: 'ctrl+t');

                  // do something with the response
                  print(response.body);
                },
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'ctrl+t',
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
