import 'package:flutter/material.dart';

class BuildTextField extends StatefulWidget {
  final String hintText;
  final bool obsecureText;

  const BuildTextField({
    super.key,
    required this.hintText,
    this.obsecureText = false,
  });

  @override
  _BuildTextFieldState createState() {
    return _BuildTextFieldState();
  }
}

class _BuildTextFieldState
    extends State<BuildTextField> {
  late bool _obsecureText;

  @override
  void initState() {
    super.initState();
    _obsecureText = widget.obsecureText; // Initialize the state
  }

  void toggleObsecureText() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F9FE),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        obscureText: _obsecureText, // Use the state for the visibility toggle
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Color(0xFF7C8BA0)),
          filled: true,
          fillColor: const Color(0xFFF5F9FE),
          constraints: const BoxConstraints(minHeight: 70),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1.0,
            ),
          ),
          suffixIcon: widget.obsecureText?IconButton(
            icon: Icon(
              _obsecureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.blue,
            ),
            onPressed: toggleObsecureText, // Toggle visibility on press
          ):null,

        ),
      ),
    );
  }
}
