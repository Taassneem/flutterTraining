import 'package:cook_project/feature/base/views/base_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'text_form_field_with_name.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
  });
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const TextFormFieldWithName(
            name: 'Username',
            prefixIcon: Icon(Icons.person_outlined, color: Colors.red),
            hintText: 'username',
            // content: 'flutter@gmail.com',
          ),
          const TextFormFieldWithName(
            name: 'Password',
            prefixIcon: Icon(Icons.lock_outline, color: Colors.red),
            hintText: 'password',
            isSecure: true,
            isFinalField: true,
            // content: 'flutter123',
          ),
          Row(
            children: [
              const Spacer(),
              Text('I forgot my password',
                  style: GoogleFonts.baloo2(fontSize: 14, color: Colors.red))
            ],
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const BaseView()));
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFDD6C),
                      Color(0xffFF3304),
                    ],
                    end: Alignment.topLeft,
                    begin: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                'Login',
                style: GoogleFonts.baloo2(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
