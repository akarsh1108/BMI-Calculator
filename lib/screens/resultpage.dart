import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../components/reusable.dart';

class result extends StatelessWidget {
  result(
      {@required this.bmiresult,
      @required this.bmitext,
      @required this.interpretation});
  final String bmiresult;
  final String bmitext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: ktitleTextFile,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kactiveboxcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmitext,
                    style: kresultfontstyle,
                  ),
                  Text(
                    bmiresult,
                    style: kresultnumberfile,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kresultTextFile,
                  )
                ],
              ),
            ),
          ),
          Bottombutton(
            buttonTitle: 'RE CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
