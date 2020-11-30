import 'package:find_my_bmi/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_my_bmi/Reusable_card.dart';
import 'constants.dart';
import 'BootyButton.dart';

class Resultspage extends StatelessWidget {
  final String bmires;
  final String result;
  final String Comment;
  Resultspage({@required this.bmires, @required this.Comment,@required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find My BMI'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomLeft,
                child: Text("Your BMI is ",style: ktitletxtstyle,),
              ),
          ),
          Expanded(
            flex: 5,
            child:ReusableCard(
              colour: kactivecardcolour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: krestxtstyle,
                  ),
                  Text(
                    bmires,
                    style:kbmitxtstyle,
                  ),
                  Text(
                    Comment,
                    style: kbodytxtstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Boottybutton(
              onTap: (){Navigator.pop(context);},
              line: "Re-Calculate"
          ),
        ],
      ),

    );
  }
}
