import 'package:flutter/material.dart';
import 'package:kitsu/pages/login_page.dart';
import 'package:kitsu/pages/register_page.dart';
import 'package:kitsu/widgets/button_widget.dart';

class AuthPage extends StatelessWidget {
  static const routeName = '/home-page';
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 170,
              ),
              Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/logo.png'),
                    fit: BoxFit.fill)
                  ),
                  ),
              const SizedBox(height: 190),
              const Text(
                'ОБМЕНИВАЙТЕСЬ НАВЫКАМИ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Овлайдейте навыками и станьте наставником',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              ButtonWidget(
                buttonName: 'НАЧАТЬ',
                buttonColor: const Color.fromRGBO(2, 217, 173, 1),
                onTap: () {
                  Navigator.of(context).pushNamed(LoginPage.routeName);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                buttonName: 'У МЕНЯ УЖЕ ЕСТЬ АККАУНТ',
                buttonColor: const Color.fromRGBO(36, 36, 36, 1),
                onTap: () {
                  Navigator.of(context).pushNamed(RegisterPage.routeName);
                },
              ),
            ],
          ),
        ));
  }
}
