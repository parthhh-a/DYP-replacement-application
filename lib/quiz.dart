import 'package:dyp/progressbar.dart';
import 'package:dyp/questioncontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'body.dart';
import 'constants.dart';
import 'progressbar.dart';

class quizscreen extends StatelessWidget {
  const quizscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        elevation: 0,backgroundColor:Colors.transparent ,
        actions: [
          FlatButton(onPressed: (){},child: Text('SKiP',
          style: TextStyle(
            color: Colors.white
          ),),)
        ],
      ),
      body: body(),
    );
  }
}
