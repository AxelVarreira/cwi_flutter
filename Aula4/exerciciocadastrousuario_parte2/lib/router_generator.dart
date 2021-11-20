import 'package:exerciciosimpleform/screens/login.screen.dart';
import 'package:exerciciosimpleform/screens/register.screen.dart';
import 'package:exerciciosimpleform/screens/verification.screen.dart';
import 'package:flutter/material.dart';

import 'model/login.model.dart';
import 'model/register.model.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case 'register':
        if (args is LoginModel) {
          return MaterialPageRoute(builder: (_) {
            return RegisterScreen(
              loginModel: args,
            );
          });
        }
        return _errorRoute();
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'verification':
        if (args is RegisterModel) {
          return MaterialPageRoute(
              builder: (_) => VerificationScreen(
                    args: args,
                  ));
        }

        return _errorRoute();
      default:
        // Se nenhuma rota com o nome informado for encontrada, retorna erro
        return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(builder: (_) => LoginScreen());
  }
}
