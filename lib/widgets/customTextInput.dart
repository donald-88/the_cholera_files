import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInput extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final Function(String) onChange;
  const CustomTextInput(
      {super.key,
      required this.hintText,
      this.isPassword = false,
      required this.onChange});

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  final TextEditingController _textController = TextEditingController();
  String? _errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextFormField(
          controller: _textController,
          onChanged: widget.onChange,
          keyboardType: widget.isPassword
              ? TextInputType.visiblePassword
              : TextInputType.emailAddress,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
              errorStyle: GoogleFonts.poppins(color: Colors.red, fontSize: 12)),
        ),
      ),
    );
  }
}