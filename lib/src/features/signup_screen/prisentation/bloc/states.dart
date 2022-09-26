
abstract class SignInScreenStates{}

class SignInInitialState extends SignInScreenStates{}
class SignInLoadingState extends SignInScreenStates{}
class SignInSuccessState extends SignInScreenStates
{
  // final SignInModel signInModel;
  //
  // SignInSuccessState(this.signInModel);
}
class SignInErrorState extends SignInScreenStates{
  final String ? error;
  SignInErrorState(this.error);
}
class SignInChangePasswordVisibilityState extends SignInScreenStates{}
