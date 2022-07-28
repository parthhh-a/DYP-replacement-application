import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'questioncontroller.dart';
import 'questions.dart';

import '../../../constants.dart';
import 'options.dart';
class questioncard extends StatelessWidget {

  const questioncard({

    Key key,
    // it means we have to pass this
    @required this.question,

  }) : super(key: key);

  final Question question;

  @override

  Widget build(BuildContext context) {

    QuestionController _controller = Get.put(QuestionController());
    return Container(

      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),

      padding: EdgeInsets.all(kDefaultPadding),



      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(

        children: [

          Text(

            question.question,

            style: Theme.of(context)
                .textTheme

                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
                (index) => options(
              index: index,

              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}