import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_application/src/features/Verify_screen/prisentation/bloc/states.dart';

class VerifyCubit extends Cubit<VerifyScreenStates>
{
  VerifyCubit():super(VerifyScreenInitialState());
  static VerifyCubit get(context)=>BlocProvider.of(context);


}