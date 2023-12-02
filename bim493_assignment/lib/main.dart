import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: AcademicApp(),
));

class AcademicApp extends StatelessWidget {
  const AcademicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome',
              style: TextStyle(color: Colors.black, fontSize: 20.0, fontFamily: 'Wallpoet', fontWeight: FontWeight.bold),
            ),
            Text(
              'Mehmet Ozcan',
              style: TextStyle(color: Colors.black, fontSize: 24.0, fontFamily: 'Wallpoet'),
            )
          ],
        ),
        backgroundColor: Colors.lime,
        leading: Icon(Icons.account_circle, color: Colors.black, size: 46.0),
        actions: [

          Padding(padding: EdgeInsets.only(top: 20.0)),
          Text.rich(
            TextSpan(
              children: [
                WidgetSpan(child: Icon(Icons.location_on_outlined, color: Colors.black, size: 25)),
                TextSpan(
                  text: 'Eskişehir',
                  style: TextStyle(color: Colors.black, fontSize: 16.0)
                ),

              ],
            ),
          )
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget> [
            Padding(padding: const EdgeInsets.only(top: 30.0, )),
            Text(
              'Upcoming Conferences',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
                'View All>>',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: <Widget>[
                Image.asset('assets/cnf_1.png',
                  width: 160.0,
                  height: 160.0,
                ),
                Padding(padding: EdgeInsets.only(right: 30.0)),
                Image.asset('assets/cnf_2.png',
                  width: 160.0,
                  height: 160.0,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Applying Education in \na Complex World',
                  textAlign: TextAlign.left,
                ),
                SizedBox(width: 55.0),
                Text(
                  'HERITAGES: Past and \nPresent - Built and Social',
                  textAlign: TextAlign.left,
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 70.0)),
            Row(
              children: <Widget>[
                Text(
                  'Favorites',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
            ],
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/cnf_3.png',
                  width: 160.0,
                  height: 160.0,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'New Perspectives in \nScience and Education',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 112, 112, 112),
      type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.white,size: 40,),
            label: 'Authors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books,color: Colors.white,size: 40,),
            label: 'Papers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark,color: Colors.white,size: 40,),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white,size: 40,),
            label: 'Search',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
