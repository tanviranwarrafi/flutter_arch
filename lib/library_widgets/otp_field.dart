import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/constants/fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpField extends StatelessWidget {
  final TextEditingController otpController;
  final Function(String) onChanged;
  const OtpField({required this.otpController, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 4,
      cursorHeight: 25,
      appContext: context,
      cursorColor: primary,
      onChanged: onChanged,
      enableActiveFill: true,
      backgroundColor: white,
      controller: otpController,
      pinTheme: _pinThemeData,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      animationDuration: const Duration(milliseconds: 300),
      textStyle: const TextStyle(color: grey, fontSize: 24, fontWeight: w600, fontFamily: manrope),
    );
  }

  PinTheme get _pinThemeData {
    return PinTheme(
      fieldWidth: 60,
      fieldHeight: 60,
      activeColor: blue,
      selectedColor: blue,
      inactiveColor: grey,
      disabledColor: grey,
      activeFillColor: white,
      inactiveFillColor: white,
      selectedFillColor: white,
      errorBorderColor: pink,
      shape: PinCodeFieldShape.box,
      fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 4),
      borderRadius: BorderRadius.circular(06),
    );
  }
}
