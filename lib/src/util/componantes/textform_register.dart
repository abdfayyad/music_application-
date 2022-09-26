import 'package:flutter/material.dart';

Widget myTextField({
  required TextEditingController controller,
  double height = 46,
  double width = 354,
  bool obscureText = false,
  String validatorValue = "",
  String labelText = "",
  String hintText = "",
  Widget? suffixIcon,
  TextInputType? keyboardType,
  Icon? prefixIcon,
  ValueChanged<String>? onFieldSubmitted,
}) =>
    SizedBox(
      height: height,
      width: width,
      child: TextFormField(
      //  style: TextStyle(),
        controller: controller,
        keyboardType: keyboardType,
        onFieldSubmitted: onFieldSubmitted,
        validator: (value) {
          if (value!.isEmpty) {
            return validatorValue;
          }
          return null;
        },
        obscureText: obscureText,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle:  TextStyle(color:Color(0xff666666)),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffixIconColor: Color(0xff666666),
            prefixIconColor: Color(0xff666666),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xff666666)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Color(0xFF666666),
                width: 2.0,
              ),
            ),
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
    );