import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWithName extends StatelessWidget {
  const TextFormFieldWithName({
    super.key,
    required this.name,
    required this.hintText,
    required this.prefixIcon,
    this.isSecure = false,
    this.isFinalField = false,
    // required this.content,
  });
  final String name;
  final String hintText;
  final Widget prefixIcon;
  final bool isSecure;
  final bool isFinalField;
  // final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: GoogleFonts.baloo2(fontSize: 18),
        ),
        const SizedBox(height: 8),
        TextFormField(
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Field is required';
            } else if (!value!.contains('flutter')) {
              return 'Enter valid input';
            }
            return null;
          },
          obscureText: isSecure ? true : false,
          textInputAction:
              isFinalField ? TextInputAction.done : TextInputAction.next,
          decoration: InputDecoration(
            filled: true,
            prefixIcon: prefixIcon,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            fillColor: const Color(0xffF9F9FB),
          ),
        ),
        const SizedBox(height: 12)
      ],
    );
  }
}
