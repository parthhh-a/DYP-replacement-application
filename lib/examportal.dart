import 'package:dyp/quiz.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'constants.dart';
import 'package:get/get.dart';


class welcomexam extends StatefulWidget {
  const welcomexam({Key key}) : super(key: key);

  @override
  _welcomexamState createState() => _welcomexamState();
}

class _welcomexamState extends State<welcomexam> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          WebsafeSvg.asset("assets/icon/bg.svg",fit: BoxFit.fill ),
          SafeArea(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(


              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Spacer(),

                Text(
                  'EXAM PORTAL,',

                  style: TextStyle(

                    color: Colors.white,
                    fontSize: 39,

                    fontWeight: FontWeight.bold,

                  ),
                ),
                Text('Enter your information below',
                style: TextStyle(
                  color: Colors.white,

                ),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'your good name',hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                    fillColor: Colors.purple,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )

                  ),
                ),
                SizedBox(
                height: 12,
                ),

                TextField(
                  decoration: InputDecoration(
                      hintText: 'your roll number',hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                      fillColor: Colors.purple,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )

                  ),
                ),
                Spacer(),

                InkWell(
                  onTap: ()=> Get.to(quizscreen()),
                  child: Container(
                    width: double.infinity ,
                    alignment: Alignment.center,


                    padding: EdgeInsets.all(kDefaultPadding * 0.90),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),

                    ),
                    child: Center(
                      child: Text('Lets Start Exam',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                )
              ],
            ),
          ))

        ],
      ),
    );
  }
}
