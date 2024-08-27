import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:vibration/vibration.dart';
import 'package:keyboard/popup_account.dart';

// var url = Uri.parse('http://127.0.0.1:5000/key');
// var urlCtrl = Uri.parse('http://127.0.0.1:5000/keyCtrl');
// var urlShiftAlt = Uri.parse('http://127.0.0.1:5000/keyShiftAlt');



final List<Widget> buttons1 = [
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
        // HapticFeedback.heavyImpact();
        // send the POST request
        var response = await http.post(url, body: '{');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }


        // do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            '{',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),

  /// ////////////////////colonna destra//////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
        // send the POST request
        var response = await http.post(url, body: '}');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
        // do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            '}',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),
  /// //////////////////////////////////////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+\\');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
// do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'ctrl+\\',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),

  /// ///////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
        // send the POST request
        var response = await http.post(url, body: '[');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
        // do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            '[',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),

  /// ///////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
        // send the POST request
        var response = await http.post(url, body: ']');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
        // do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            ']',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),


  /// ///////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlShiftAlt, body: 'shift+alt+a');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
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
];

/// ////////////////////////////////////////////////////////////////////////////////////////////////
final List<Widget> buttons2 = [
  /// //////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
        // send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+z');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
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

  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+y');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
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
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+/');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
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
  /// //////////////////////////////////////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+ù');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
// do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'ctrl+ù',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),
  /// //////////////////////////////////////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+s');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
// do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'ctrl+s',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),
  /// ///////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+r');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
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
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+t');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
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
];

/// ////////////////////////////////////////////////////////////////////
 final List<Widget> buttons3 = [
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
        // HapticFeedback.heavyImpact();
        // send the POST request
        var response = await http.post(url, body: '(');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
        // do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            '(',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),

  /// ////////////////////colonna destra//////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
        // send the POST request
        var response = await http.post(url, body: ')');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
        // do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            ')',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),
   /// //////////////////////////////////////////////////////////////////////
   Padding(
     padding: EdgeInsets.only(top: 5,bottom: 5),
     child: ElevatedButton(
       onPressed: () async {
// send the POST request
         var response = await http.post(urlCtrl, body: 'ctrl+x');

         if (await Vibration.hasVibrator()!=null) {
           Vibration.vibrate(duration: 50);
         }
// do something with the response
         print(response.body);
       },
       child: const RotatedBox(
           quarterTurns: 1,
           child: Text(
             'Cut',
             style: TextStyle(fontSize: 30),
           )),
     ),
   ),

   /// //////////////////////////////////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+c');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
// do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'Copy',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),

  /// //////////////////////////////////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlCtrl, body: 'ctrl+v');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
// do something with the response
        print(response.body);
      },
      child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'Paste',
            style: TextStyle(fontSize: 30),
          )),
    ),
  ),


  /// ///////////////////////////////////////////
  Padding(
    padding: EdgeInsets.only(top: 5,bottom: 5),
    child: ElevatedButton(
      onPressed: () async {
// send the POST request
        var response = await http.post(urlShiftAlt, body: 'shift+alt+a');

        if (await Vibration.hasVibrator()!=null) {
          Vibration.vibrate(duration: 50);
        }
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
];
