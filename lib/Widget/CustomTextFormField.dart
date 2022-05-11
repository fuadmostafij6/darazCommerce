import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextFormField(
      {Key? key,
      required this.controller,
      this.hintText,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.prefixIcon,
      this.suffixIcon})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFcdd1ce), borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.text,
          enableSuggestions: true,
          decoration: InputDecoration(
            focusColor: Colors.black,
            //add prefix icon
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,

            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white30, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.black,

            hintText: widget.hintText,

            //make hint text
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontFamily: "verdana_regular",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
