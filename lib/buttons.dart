import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:keyboard/test.dart';
import 'package:vibration/vibration.dart';
import 'package:keyboard/popup_account.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// var url = Uri.parse('http://127.0.0.1:5000/key');
// var urlCtrl = Uri.parse('http://127.0.0.1:5000/keyCtrl');
// var urlShiftAlt = Uri.parse('http://127.0.0.1:5000/keyShiftAlt');
var short_1_1 = '{';
var short_1_2 = '}';
var short_1_3 = '[';
var short_1_4 = ']';
var short_1_5 = 'ctrl+down';
var short_1_6 = '{';
var short_1_7 = '{';

var short_2_1 = 'ctrl+z';
var short_2_2 = 'ctrl+y';
var short_2_3 = 'ctrl+ù';
var short_2_4 = 'ctrl+s';
var short_2_5 = 'ctrl+r';
var short_2_6 = 'ctrl+t';
var short_2_7 = 'ctrl+up';

var short_3_1 = '(';
var short_3_2 = ')';
var short_3_3 = 'ctrl+x';
var short_3_4 = 'ctrl+c';
var short_3_5 = 'ctrl+v';

var short_4_1 = 'ctrl+x';
var short_4_2 = 'ctrl+c';
var short_4_3 = 'ctrl+v';
var short_4_4 = 'ctrl+f';

var short_5_1 = 'cmd+1';
var short_5_2 = 'cmd+2';
var short_5_3 = 'cmd+3';
var short_5_4 = 'cmd+4';

var short_6_1 = 'ctrl+z';
var short_6_2 = 'cmd+2';
var short_6_3 = 'cmd+3';
var short_6_4 = 'cmd+4';

const font_size = 20.0;
List<Widget> buttons1(orientation) {
  final List<Widget> buttons1 = [
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(url, body: short_1_1);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }

          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_1_1,
              style: const TextStyle(fontSize: font_size),
            )),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(url, body: short_1_2);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }

          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_1_2,
              style: const TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(url, body: short_1_3);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_1_3,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(url, body: short_1_4);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_1_4,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(urlCtrl, body: short_1_5);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_1_5,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),
  ];
  return buttons1;
}

/// ////////////////////////////////////////////////////////////////////////////////////////////////
List<Widget> buttons2(orientation) {
  final List<Widget> buttons2 = [
    /// //////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(urlCtrl, body: short_2_1);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_2_1,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(urlCtrl, body: short_2_2);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_2_2,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// //////////////////////////////////////////////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(urlCtrl, body: short_2_3);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_2_3,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// //////////////////////////////////////////////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
// send the POST request
          var response = await http.post(urlCtrl, body: short_2_4);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
// do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_2_4,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ///////////////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
// send the POST request
          var response = await http.post(urlCtrl, body: short_2_5);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
// do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_2_5,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ///////////////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
// send the POST request
          var response = await http.post(urlCtrl, body: short_2_6);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
// do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_2_6,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
// send the POST request
          var response = await http.post(urlCtrl, body: short_2_7);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
// do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_2_7,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),
  ];
  return buttons2;
}

/// ////////////////////////////////////////////////////////////////////
List<Widget> buttons3(orientation) {
  final List<Widget> buttons3 = [
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(url, body: short_3_1);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_3_1,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(url, body: short_3_2);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_3_2,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// //////////////////////////////////////////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(urlCtrl, body: short_3_3);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_3_3,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// //////////////////////////////////////////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(urlCtrl, body: short_3_4);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_3_4,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// //////////////////////////////////////////////////////////////////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // send the POST request
          var response = await http.post(urlCtrl, body: short_3_5);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_3_5,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),
  ];
  return buttons3;
}

/// ////////////////////////////////////////////////////
List<Widget> buttons4(orientation) {
  final List<Widget> buttons4 = [
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_4_1);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_4_1,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_4_2);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_4_2,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_4_3);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_4_3,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_4_4);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_4_4,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),
  ];
  return buttons4;
}

/// ////////////////////////////////////////////////////
List<Widget> buttons5(orientation) {
  final List<Widget> buttons5 = [
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_5_1);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_5_1,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_5_2);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_5_2,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_5_3);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_5_3,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_5_4);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_5_4,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),
  ];
  return buttons5;
}

/// ////////////////////////////////////////////////////
List<Widget> buttons6(orientation) {
  final List<Widget> buttons6 = [
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_6_1);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_6_1,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_6_2);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_6_2,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_6_3);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_6_3,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),

    /// ////////////////////colonna destra//////////
    Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          // HapticFeedback.heavyImpact();
          // send the POST request
          var response = await http.post(urlCtrl, body: short_6_4);

          if (await Vibration.hasVibrator() != null) {
            Vibration.vibrate(duration: 50);
          }
          // do something with the response
          print(response.body);
        },
        child: RotatedBox(
            quarterTurns: orientation,
            child: Text(
              short_6_4,
              style: TextStyle(fontSize: font_size),
            )),
      ),
    ),
  ];
  return buttons6;
}
