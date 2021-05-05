import 'package:flutter/material.dart';
import 'dart:math';

const PrimaryColor = const Color(0xFF525252);


// fortunes from https://joshmadison.com/2008/04/20/fortune-cookie-fortunes/
final _fortunesArr = [
  'A feather in the hand is better than a bird in the air.',
  'A good time to finish up old tasks.',
  'A hunch is creativity trying to tell you something.',
  'A new perspective will come with the new year.',
  'Advice is like kissing. It costs nothing and is a pleasant thing to do.',
  'Beauty in its various forms appeals to you.',
  'Don’t confuse recklessness with confidence.',
  'Emulate what you admire in your parents.',
  'He who expects no gratitude shall never be disappointed.',
  'If your desires are not too extravagant they will be granted.',
  'Love truth, but pardon error.',
  'New people will bring you new realizations, especially about big issues.',
  'Stand tall. Don’t look down upon yourself.',
  'The secret to good friends is no secret to you.',
  'There is no wisdom greater than kindness.',
  'You will be a great success both in the business world and society.',
  'Your success will astonish everyone.',
  'Failure is the chance to do better next time.',
  'Go for the gold today! You’ll be the champion of whatever.',
  'Every flower blooms in its own sweet time.',
  'Don’t just spend time. Invest it.',
  'Change is happening in your life, so go with the flow!',
  'Any decision you have to make tomorrow is a good decision.',
  'An acquaintance of the past will affect you in the near future.',
  'In order to take, one must first give.',
  'It is worth reviewing some old lessons.',
  'Long life is in store for you.',
  'Never fear! The end of something marks the start of something new.',
  'One can never fill another’s shoes, rather he must outgrow the old shoes.',
  'Sift through your past to get a better idea of the present.',
  'Stop searching forever, happiness is just next to you.',
  'The harder you work, the luckier you get.',
  'The smart thing to do is to begin trusting your intuitions.',
  'Use your eloquence where it will do the most good.',
  'Welcome change.',
  'You are almost there.',
  'Your ability is appreciated.',
  'Your happiness is before you, not behind you! Cherish it.',
  'Miles are covered one step at a time.',
  'Like the river flows into the sea, some things are just meant to be.',
  'Courtesy is contagious.',
  'Determination is what you need now.',
  'An agreeable romance might begin to take on the appearance.',
  'A golden egg of opportunity falls into your lap this month.',
  'A small donation is called for. It’s the right thing to do.',
  'Pick battles big enough to matter, small enough to win.',
  'Put your mind into planning today. Look into the future.',
  'Savor your freedom – it is precious.',
  'Someone you care about seeks reconciliation.',
  'You will soon be surrounded by good friends and laughter.',
  'You will be pleasantly surprised tonight.',
  'You will enjoy good health.',
  'Your difficulties will strengthen you.',
  'Your life will get more and more exciting.',
  'Your moods signal a period of change.',
  'Your ability to juggle many tasks will take you far.',
  'Help! I’m being held prisoner in a chinese bakery!',
  'Disbelief destroys the magic.',
];

class Fortunes extends StatefulWidget {
  @override
  _FortunesState createState() => _FortunesState();
}
class _FortunesState extends State<Fortunes> {
  String _currentFortune = '';

  @override
  Widget build(BuildContext context) {
    final title = 'Fortune Generator';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: PrimaryColor,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 300.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: PrimaryColor,
                child: Text(
                  "Open A Fortune Cookie!",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: generateFortune,
              ),
              SizedBox(height: 15),
              Text(
                _currentFortune == null ? "" : "$_currentFortune",
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 19.4,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                'images/fortune-cookie.png',
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
              ),
            ]
          )
        )
      ),
    );
  }

  void generateFortune() {
    var now = new DateTime.now();
    Random rng = new Random(now.millisecondsSinceEpoch);
    int min = 0, max = 54;
    var newNum = min + rng.nextInt(max - min);

    _currentFortune = _fortunesArr[newNum];
    setState(() {});
  }
}
