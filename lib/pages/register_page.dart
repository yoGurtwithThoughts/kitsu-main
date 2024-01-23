import 'package:flutter/material.dart';
import 'package:kitsu/widgets/button_widget.dart';
import 'package:kitsu/widgets/text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/reg-page';

  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     'РЕГИСТРАЦИЯ',
      //     style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         color: Color.fromRGBO(13, 159, 129, 1),
      //         fontSize: 15),
      //   ),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              const Text(
                'РЕГИСТРАЦИЯ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(13, 159, 129, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 85,
              ),
              const SizedBox(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Добро пожаловать назад!\nМы скучали',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17),
                ),
              )),
              Container(
                  width: 350,
                  height: 350,
                  child: Image.asset('assets/logo.png')),
              const TextFieldWidget(),
              ButtonWidget(
                buttonName: 'СТАТЬ ЛИСОМ',
                buttonColor: const Color.fromRGBO(2, 217, 173, 1),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
