import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF525252);

final _presArr = [
  'George Washington',
  'John Adams',
  'Thomas Jefferson',
  'James Madison',
  'James Monroe',
  'John Quincy Adams',
  'Andrew Jackson',
  'Martin Van Buren',
  'William Henry Harrison',
  'John Tyler',
  'James K. Polk',
  'Zachary Taylor',
  'Millard Fillmore',
  'Franklin Pierce',
  'James Buchanan',
  'Abraham Lincoln',
  'Andrew Johnson',
  'Ulysses S. Grant',
  'Rutherford B. Hayes',
  'James A. Garfield',
  'Chester A. Arthur',
  'Grover Cleveland',
  'Benjamin Harrison',
  'William McKinley',
  'Theodore Roosevelt',
  'William H. Taft',
  'Woodrow Wilson',
  'Warren Harding',
  'Calvin Coolidge',
  'Herbert Hoover',
  'Franklin D. Roosevelt',
  'Harry S. Truman',
  'Dwight D. Eisenhower',
  'John F. Kennedy',
  'Lyndon B. Johnson',
  'Richard Nixon',
  'Gerald Ford',
  'Jimmy Carter',
  'Ronald Reagan',
  'George H.W. Bush',
  'Bill Clinton',
  'George W. Bush',
  'Barack Obama',
  'Donald Trump',
  'Joe Biden'
];

class PresList extends StatefulWidget {
  @override
  _PresListState createState() => _PresListState();
}
class _PresListState extends State<PresList> {
  @override
  Widget build(BuildContext context) {
    final title = 'Presidents List';

    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            backgroundColor: PrimaryColor,
          ),
          body: ListView.builder(
            itemCount: _presArr.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_presArr[index]),
              );
            },
          ),
        ),
    );
  }
}