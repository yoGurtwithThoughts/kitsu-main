import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final buttonName;
  final buttonColor;
  final void Function()? onTap;

  const ButtonWidget({
    required this.buttonName,
    required this.buttonColor,
    required this.onTap,
  });

  @override
   Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Text (buttonName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: <Shadow>[
            Shadow(
              blurRadius: 3.0,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
             ]
          ),)
            ]
          ),
      ),
    );
  }
}