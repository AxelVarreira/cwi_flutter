import 'package:exerciciosimpleform/model/login.model.dart';

class RegisterModel {
  final LoginModel loginModel;
  final String email;
  final String Name;
  final String password;
  final String confirmPassword;
  final String mobileNumber;
  final String Country;
  final String referalCode;

  RegisterModel(
      {required this.loginModel,
      required this.email,
      required this.Name,
      required this.password,
      required this.confirmPassword,
      required this.mobileNumber,
      required this.Country,
      required this.referalCode});

  @override
  String toString() {
    return 'LoginModel email: ${loginModel.email}, LoginModel password: ${loginModel.password} email: $email, Name: $Name, password: $password, confirmPassword: $confirmPassword, mobileNumber: $mobileNumber, Country: $Country, referalCode: $referalCode, ';
  }
}
