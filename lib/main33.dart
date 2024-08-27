import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  var url = Uri.parse('http://192.168.1.76:5000/key');
  var urlCtrl = Uri.parse('http://192.168.1.76:5000/keyCtrl');
  var urlShiftAlt = Uri.parse('http://192.168.1.76:5000/keyShiftAlt');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
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
                    style: TextStyle(fontSize: 100),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
              onPressed: () async {
                // send the POST request
                var response = await http.post(url, body: '{');

                // do something with the response
                print(response.body);
              },
              child: const RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    '{',
                    style: TextStyle(fontSize: 100),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
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
                    style: TextStyle(fontSize: 100),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
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
                    style: TextStyle(fontSize: 100),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////

            ElevatedButton(
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
                    style: TextStyle(fontSize: 60),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
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
                    style: TextStyle(fontSize: 60),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
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
                    style: TextStyle(fontSize: 60),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
              onPressed: () async {
                // send the POST request
                var response = await http.post(urlShiftAlt, body: 'shift+alt+a');

                // do something with the response
                print(response.body);
              },
              child: const RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'shift+alt+a',
                    style: TextStyle(fontSize: 60),
                  )),
            ),

            /// ////////////////////////////////////////////////////////////
            ElevatedButton(
              onPressed: () async {
                // send the POST request
                var response = await http.post(urlShiftAlt, body: 'shift+alt+a');

                // do something with the response
                print(response.body);
              },
              child: const RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'shift+alt+a',
                    style: TextStyle(fontSize: 60),
                  )),
            ),
            /// ////////////////////////////////////////////////////////////
            /// ////////////////////////////////////////////////////////////
          ],
        ),
      )),
    );
  }
}
