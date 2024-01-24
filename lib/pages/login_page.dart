import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kitsu/widgets/button_widget.dart';
import 'package:kitsu/widgets/text_field_item_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kitsu/pages/models/db_helder.dart';
import 'package:kitsu/pages/models/user_model.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/log-page';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var dbSqliteHelper = DbHelper();

  _userLogin() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isEmpty) {
      Fluttertoast.showToast(
        msg: 'введите почту',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color.fromRGBO(13, 159, 129, 1),
        textColor: const Color.fromRGBO(13, 159, 129, 1),
        fontSize: 15,
      );
    } else if (password.isEmpty) {
      Fluttertoast.showToast(
        msg: 'пароль почту',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color.fromRGBO(13, 159, 129, 1),
        textColor: const Color.fromRGBO(13, 159, 129, 1),
        fontSize: 15,
      );
    } else {
      await dbSqliteHelper
          .getUserLogin(
            userId: '1',
            password: password,
          )
          .then((value) {})
          .catchError((error) {
        if (kDebugMode) {
          print(error);
        }
        Fluttertoast.showToast(
            msg: "Ошибка данных",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 15);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              const SizedBox(
                  child: Text(
                'ВОЙТИ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(13, 159, 129, 1),
                    fontSize: 15),
              )),
              const SizedBox(height: 85),
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
              const SizedBox(height: 30),
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logo.png'), fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 160),
              TextFieldWidget(
                  controller: _emailController,
                  hintText: 'Введите Email',
                  icon: const Icon(Icons.email,
                      color: Color.fromRGBO(2, 217, 173, 1))),
              const SizedBox(height: 20),
              TextFieldWidget(
                controller: _passwordController,
                hintText: 'Введите пароль',
                icon: const Icon(Icons.lock,
                    color: Color.fromRGBO(2, 217, 173, 1)),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                buttonName: 'ВОЙТИ',
                buttonColor: const Color.fromRGBO(2, 217, 173, 1),
                onTap: () {},
              )
            ],
          ),
        )));
  }
}
