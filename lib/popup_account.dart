import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

var addr = '192.168.183.30:5000';
var url = Uri.parse('http://$addr/key');
var urlCtrl = Uri.parse('http://$addr/keyCtrl');
var urlShiftAlt = Uri.parse('http://$addr/keyShiftAlt');

// var url = Uri.parse('http://192.168.1.76:5000/key');
// var urlCtrl = Uri.parse('http://192.168.1.76:5000/keyCtrl');
// var urlShiftAlt = Uri.parse('http://192.168.1.76:5000/keyShiftAlt');

// var quarterTurns=0;
// bool isVertical= true;
class PopUpAccount extends StatefulWidget {
  const PopUpAccount({Key? key}) : super(key: key);

  @override
  State<PopUpAccount> createState() => _PopUpAccountState();
}

class _PopUpAccountState extends State<PopUpAccount> {
  @override
  Widget build(BuildContext context) {
    final IPaddr = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: AlertDialog(
          elevation: 60,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.00)),
              side: BorderSide(color: Colors.blueAccent, width: 3)),
          title: const Center(
            child: Text('Settings'),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// //////////////////1st//////////////////////////////////////
              TextField(
                  controller: IPaddr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                    // prefixIcon: Icon(Icons.location_on_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),

                    hintText: 'IP address API',
                    filled: true,
                    fillColor: Color(0xffffffff),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onSubmitted: (value) async {}),

              /// ////////////////////2nd///////////////////////////////////

              /// //////////////////////////////////////////////////////////
              // ActionChip(
              //   avatar: Icon(isVertical ? Icons.check_box_outlined : Icons.check_box_outline_blank ),
              //   label: const Text('Vertical orientation'),
              //   onPressed: () {
              //     setState(() {
              //       isVertical = !isVertical;
              //       if (isVertical==true){
              //         quarterTurns=0;
              //       }else{
              //         quarterTurns=1;
              //       }
              //     });
              //   },
              // ),

              /////////////////////////end text 3//////////////////////////////
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      url = Uri.parse('http://${IPaddr.text}/key');
                      urlCtrl = Uri.parse('http://${IPaddr.text}/keyCtrl');
                      urlShiftAlt =
                          Uri.parse('http://${IPaddr.text}/keyShiftAlt');
                      Navigator.pop(context);
                    },
                    child: Text('Set'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).appBarTheme.backgroundColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.pop(context, 'Cancel');
                    },
                    child: Text('Cancella'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).appBarTheme.backgroundColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                      // side: MaterialStateProperty.all(
                      //     BorderSide(width: 2, color: Colors.blueAccent)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
