import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/fortunes.dart';
//import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'bmi.dart';
import 'presList.dart';
import 'fortunes.dart';

void main() => runApp(TabBarDemo());

const PrimaryColor = const Color(0xFF525252);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: PrimaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
          backgroundColor: PrimaryColor,
        ),
        body: TabBarDemo()
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.calculate)),
                Tab(icon: Icon(Icons.list)),
                Tab(icon: Icon(Icons.sentiment_satisfied_alt_outlined)),
              ],
            ),
            title: Text('Welcome to Flutter'),
            backgroundColor: PrimaryColor,
          ),
          body: TabBarView(
            children: [
              Bmi(),
              PresList(),
              Fortunes(),
            ],
          ),
        ),
      ),
    );
  }
}
