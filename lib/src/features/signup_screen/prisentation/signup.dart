import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_application/src/features/Verify_screen/prisentation/verify_screen.dart';
import 'package:music_application/src/features/signup_screen/prisentation/bloc/states.dart';


import '../../../util/componantes/defaltbuttom.dart';
import '../../../util/componantes/textform_register.dart';
import 'bloc/cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstNameController=TextEditingController();
    var lastNameController=TextEditingController();
    var emailController=TextEditingController();
    var passwordController=TextEditingController();

    return BlocProvider(
      create: (BuildContext context)=>SignInCubit(),
        child: BlocConsumer<SignInCubit,SignInScreenStates>(
        listener: (context,state){},
    builder: (context,state){
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child:Padding(
                  padding:  EdgeInsets.only(left: 8.w,top:8.h,right:8.w,bottom:8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Container(
                              width: 307.w,
                              height: 247.h,
                              child: Image.asset('assets/images/login.png'))),
                       Text(' Sign Up Now !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp),),
                      SizedBox(height: 8.h,),
                      Row(
                        children: [
                          myTextField(
                            width: 157.w,
                            height: 46.h,
                            controller: firstNameController,
                            validatorValue: 'First name is embty',
                            labelText:'First name',

                          ),
                          SizedBox(width: 10.0,),
                          myTextField(
                            width: 157.w,
                            height: 46.h,
                            controller: lastNameController,
                            validatorValue: 'Last name is embty',
                            labelText:'Last name',

                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      myTextField(
                        width: 354.w,
                        height: 46.h,
                        controller: emailController,
                        prefixIcon: Icon(Icons.email),
                        validatorValue: 'emil address must not be embty',
                        labelText:'Email',

                        keyboardType: TextInputType.emailAddress,

                      ),
                      SizedBox(height: 20.h,),
                      myTextField(
                        width: 354.w,
                        height: 46.h,
                        controller: passwordController,
                        validatorValue: 'password must not be empty',
                        prefixIcon: Icon(Icons.lock),
                        labelText:'password',
                        obscureText:SignInCubit.get(context).isPasswordShow,

                        suffixIcon: IconButton(
                          onPressed: () {
                            SignInCubit.get(context).changePasswordVisibility();
                          },
                          icon:Icon( SignInCubit.get(context).suffix),

                        ),

                      ),
                      SizedBox(height: 20.h,),
                      Center(
                        child: defaultbutton(
                            function: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VerifyScreen()));

                            },
                            text: 'Sign up',
                            width: 259.w,
                            height: 48.h,
                            fontSizeText: 18.sp,
                            backround: Color(0xFF6E1EFF)
                        ),
                      ),
                      SizedBox(height: 35.h,),
                      Row(
                        children: [
                           Expanded(child: Divider(thickness: 1,color: Color(0xff707070))),

                          Padding(
                            padding:  EdgeInsets.only(left: 15.w,right: 15.w),
                            child: Text('Or',style: TextStyle(fontSize: 14.sp),),
                          ),
                          Expanded(child: Divider(thickness: 1,color: Color(0xff707070),)),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          defaultbutton(
                              function: (){},
                              text: 'Google',
                              width: 116.w,
                              height: 46.h,
                              fontSizeText: 18.sp,
                              backround: Color(0xFF7D7C7C)
                          ),
                          defaultbutton(
                              function: (){

                              },
                              text: 'Facebook',
                              width: 116.w,
                              height: 46.h,
                              fontSizeText: 18.sp,
                              backround: Color(0xFF7D7C7C)
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Center(child: Text('By Continuing you agree to the Terms and Conditions',style: TextStyle(fontSize: 14.sp,),textAlign:TextAlign.center,))
                    ],
                  ),
                ) ,
              ),
            ),
          );
    },
        ),
    );
  }
}
