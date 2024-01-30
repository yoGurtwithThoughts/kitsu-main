import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kitsu/widgets/mainpagebannerstyle.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});
  static const routeName = '/new-page';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,top: 65),
          child: Column(
            children:  <Widget>[
              Text('Наставники',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,),
              ),


             BannerCard(
                 // userImage: Image.asset('assets/logo.png'),
                  nameUser: 'Laura',
                 backcontColor: Color.fromRGBO(36, 36, 36, 1),
                 // progressImage: Image.asset('assets/categoribeginner.png'),
                  backshadowColor: Colors.black45,
                ),
              BannerCard(
                // userImage: Image.asset('assets/logo.png'),
                nameUser: 'Alisia',
                backcontColor: Color.fromRGBO(36, 36, 36, 1),
                // progressImage: Image.asset('assets/categoribeginner.png'),
                backshadowColor: Colors.black45,
              ),
          ]


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





