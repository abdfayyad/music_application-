import '../../data/models.dart';

abstract class LoginScreenStates{}

class LoginInitialState extends LoginScreenStates{}
class LoginLoadingState extends LoginScreenStates{}
class LoginSuccessState extends LoginScreenStates
{
  final LoginModel loginModel;
  LoginSuccessState(this.loginModel);
}
class LoginErrorState extends LoginScreenStates{
  final String error;
  LoginErrorState(this.error);
}
class LoginChangePasswordVisibilityState extends LoginScreenStates{}
