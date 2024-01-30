import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});
  static const routeName = '/new-page';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,top: 50),
          child:  Column(
            children: <Widget>[
              Text('Наставники',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,),
              ),
              Container(),

],
    ),
    ),
    ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
          },
          items: [
            BottomNavigationBarItem(

              icon: Icon(Icons.person,
                  color: Color.fromRGBO(2, 217, 173, 1)
              ),
              label: '',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: Color.fromRGBO(2, 217, 173, 1)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: Color.fromRGBO(2, 217, 173, 1)),
              label: '',
            ),
          ],
          backgroundColor: Colors.transparent,
          unselectedFontSize: 12.0,
          selectedIconTheme: IconThemeData(size: 30)
      ),
    );

  }
}