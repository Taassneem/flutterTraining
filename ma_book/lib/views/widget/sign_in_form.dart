import 'package:flutter/material.dart';
import 'package:ma_book/views/home_view.dart';

class SignInForm extends StatelessWidget {
   SignInForm({
    super.key,
  });
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Field is required';
              } else if (!value.contains('@gmail.com')) {
                return 'Enter valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          TextFormField(
            keyboardType: TextInputType.number,
            obscureText: true,
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              if (formKey.currentState!.validate()) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              }
            },
            child: Container(
              width: double.infinity,
              height: 50,
              color: const Color(0xff3E494A),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Forgot Password?',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w400, fontSize: 12),
          )
        ],
      ),
    );
  }
}
