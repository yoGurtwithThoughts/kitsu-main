import 'package:flutter/material.dart';
class BannerCard extends StatelessWidget{
  @override
 // final Image userImage;
 // final Image progressImage;
  final String nameUser;
  final Color backshadowColor;
  final Color backcontColor;
  const BannerCard(
      {
  required this.nameUser,
  //    required this.progressImage,
  //    required this.userImage,
        required this.backcontColor,
        required this.backshadowColor,
      super.key});
  @override
  Widget build (BuildContext context) {
    return InkWell(
       onTap:   () {
        // Обработка нажатия. Например, переход на новую страницу.
        //Navigator.push(
         // context
         // MaterialPageRoute(builder: (context) => UserProfilePage(banner)),
        //);

      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


          //  Image.asset('$userImage',
           //  width: 35.0,
           //   height: 35.0,
           //   fit: BoxFit.cover,
            //),
            //Image.asset('$progressImage',
            //width: 35,
           // height: 35,),

   Container(
      padding: EdgeInsets.only(top: 15,left: 55),
        child: Text('$nameUser',
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 12),),
    width: 278,
    height: 50,
     decoration: BoxDecoration(
    color: Color.fromRGBO(53, 51, 51, 1),
    borderRadius: BorderRadius.circular(15),
    ),
    ),
      ],
        ),
      ),
    );
  }
  }