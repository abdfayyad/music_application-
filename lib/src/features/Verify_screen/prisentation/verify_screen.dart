import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_application/src/features/Verify_screen/prisentation/bloc/cubit.dart';
import 'package:music_application/src/features/Verify_screen/prisentation/bloc/states.dart';
import 'package:music_application/src/features/login_screen/prisentation/login.dart';
import '../../../util/componantes/defaltbuttom.dart';
import '../../../util/componantes/verifytextfield.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<TextEditingController> _controller = [
      for (int i = 1; i <= 6; i++) TextEditingController()
    ];

    return Scaffold(
        body: BlocProvider(
      create: (BuildContext context) => VerifyCubit(),
      child: BlocConsumer<VerifyCubit, VerifyScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(left: 8.w,top:8.h,right:8.w,bottom:8.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.0.h,
                  ),
                  Center(
                      child: Container(
                          width: 307.w,
                          height: 247.h,
                          child: Image.asset('assets/images/login.png'))),
                   Text(
                    'Verify Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:30.sp),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Container(
                    width: 354.w,
                    height: 256.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff707070), width: 1.w),
                        borderRadius: new BorderRadius.circular(23.0.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('We have sent the code to the email',style: TextStyle(
                            fontSize: 14.sp)),
                        Text('hh@gmail.com',
                            style: TextStyle(
                                 fontSize: 20.sp)),
                        Text('Please , put the code here',style: TextStyle(
                            fontSize: 14.sp)),
                        SizedBox(
                          height: 4.0.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyVerifyTextField(
                              controller: _controller[0],
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                            MyVerifyTextField(
                              controller: _controller[1],
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                            MyVerifyTextField(
                              controller: _controller[2],
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                            MyVerifyTextField(
                              controller: _controller[3],
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                            MyVerifyTextField(
                              controller: _controller[4],
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                            MyVerifyTextField(
                                controller: _controller[5],

                                // textInputAction: TextInputAction.done,
                                onFieldSubmitted: (value) {
                                  value = _controller[0].text +
                                      _controller[1].text +
                                      _controller[2].text +
                                      _controller[3].text +
                                      _controller[4].text +
                                      _controller[5].text;
                                  print(value);
                                }),
                          ],
                        ),
                        SizedBox(
                          height: 4.0.h,
                        ),
                        Container(
                          height: 17.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Resend',style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14.sp)),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 1.sm,
                                width: 8.w,
                              ),
                              Text('50 seconds',style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14.sp))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  defaultbutton(
                      function: () {
                       // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));

                        print(_controller[0].text +
                            _controller[1].text +
                            _controller[2].text +
                            _controller[3].text +
                            _controller[4].text +
                            _controller[5].text);
                      },
                      text: 'Verify',
                      width: 303.w,
                      height: 46.h,
                      fontSizeText: 18.sp,
                      backround: Color(0xFF6E1EFF)),
                ],
              ),
            ),
          );
        },
      ),
    ));
  }
}
