import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/forest.jpg'),
          Transform.translate(
            offset: Offset(0,100),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),
                _buildActions(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildProfileImage(BuildContext context) {
  return Container(
    width: 200,
    height: 200,
    child: ClipOval(
      child: Image.asset(
        'assets/anime_girl.jpg',
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}
Widget _buildProfileDetails(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Ayşegül Kadiroğlu',
          style: TextStyle(fontSize: 60,
          fontWeight: FontWeight.w600),
        ),
        _buildDetailsRow('username', 'aisha'),
        _buildDetailsRow('app member since', 'August 21, 2021'),
      ],
    ),
  );
}
Widget _buildDetailsRow(String heading, String value) {
  return Row(
    children: <Widget>[
      Text(
        '$heading: ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Text(
        '$value: ',
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
      )
    ],
  );
}
Widget _buildActions(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      _buildIcon(Icons.code, 'Practice'),
      _buildIcon(Icons.explore, 'Explore'),
      _buildIcon(Icons.coffee_maker, 'Break')
    ],
  );
}
Widget _buildIcon(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 160.0, right: 20.0, bottom: 10.0),
    child: Column(
      children: <Widget>[
        Icon(icon, size:40),
        Text(text)
      ],
    ),
  );
}
