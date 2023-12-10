import 'package:app/constants/colors.dart';
import 'package:app/constants/fonts.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool? obscureText;
  final Color? fillColor;
  final bool? readOnly;
  final String? hintText;
  final bool? showCursor;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final String? counterText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final bool? isFocusBorderTransparent;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(PointerDownEvent)? onTapOutside;
  final Function()? onTap;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;

  const InputField({
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.obscureText,
    this.fillColor,
    this.readOnly,
    this.hintText,
    this.showCursor,
    this.focusNode,
    this.autoFocus,
    this.counterText,
    this.prefixIcon,
    this.suffixIcon,
    this.initialValue,
    this.isFocusBorderTransparent,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization,
    this.onChanged,
    this.onEditingComplete,
    this.onTapOutside,
    this.onTap,
    this.onFieldSubmitted,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLength: maxLength,
      controller: controller,
      initialValue: initialValue,
      readOnly: readOnly ?? false,
      autofocus: autoFocus ?? false,
      decoration: _inputDecoration,
      showCursor: showCursor,
      focusNode: focusNode,
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      obscureText: obscureText ?? false,
      cursorColor: const Color(0xFF0066FF),
      style: const TextStyle(color: grey, fontSize: 16, fontWeight: w500, fontFamily: manrope),
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      onTapOutside: onTapOutside ?? (event) => FocusScope.of(context).unfocus(),
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      onSaved: controller != null ? (val) => controller?.text = val! : null,
      onEditingComplete: onEditingComplete ?? () => FocusScope.of(context).unfocus(),
    );
  }

  InputDecoration get _inputDecoration {
    var radius = BorderRadius.circular(6);
    var disabledSide = const BorderSide(color: grey);
    var borderSide = const BorderSide(color: grey);
    var focusedSide = const BorderSide(color: blue);
    var errorSide = const BorderSide(color: pink);
    var enabled = readOnly != null && readOnly! ? false : true;
    var border = OutlineInputBorder(borderRadius: radius, borderSide: borderSide);
    var focusedBorder = OutlineInputBorder(borderRadius: radius, borderSide: focusedSide);
    var errorBorder = OutlineInputBorder(borderRadius: radius, borderSide: errorSide);
    var disabledBorder = OutlineInputBorder(borderRadius: radius, borderSide: disabledSide);
    return InputDecoration(
      filled: true,
      isDense: true,
      enabled: enabled,
      errorMaxLines: 2,
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      counterText: counterText,
      fillColor: fillColor ?? white,
      border: border,
      enabledBorder: border,
      errorBorder: errorBorder,
      focusedErrorBorder: errorBorder,
      disabledBorder: disabledBorder,
      prefixIconConstraints: const BoxConstraints(minWidth: 40),
      suffixIconConstraints: const BoxConstraints(minWidth: 40, minHeight: 44),
      contentPadding: const EdgeInsets.fromLTRB(16, 13, 16, 13),
      focusedBorder: readOnly != null && readOnly! ? border : focusedBorder,
      labelStyle: const TextStyle(color: grey, fontSize: 16, fontWeight: w500, fontFamily: manrope),
      hintStyle: const TextStyle(color: grey, fontSize: 16, fontWeight: normal, fontFamily: manrope),
      errorStyle: const TextStyle(color: pink, fontSize: 14, fontWeight: normal, fontFamily: manrope, height: 1),
    );
  }
}
