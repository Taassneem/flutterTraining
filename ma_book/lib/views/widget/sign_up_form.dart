import 'package:flutter/material.dart';
import 'package:ma_book/views/name_view.dart';

import '../sign_in_view.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isVisability = true;
  bool isChecked = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
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
              obscureText: isVisability,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Field is required';
                }
                return null;
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isVisability = !isVisability;
                      },
                    );
                  },
                  icon: isVisability
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 36),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  activeColor: const Color(0xff44BFC7),
                ),
                const Text('I agree to Terms of Use & Privacy Policy',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14))
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  NameView()));
                }
              },
              child: Container(
                width: double.infinity,
                height: 45,
                color: const Color(0xff3E494A),
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 68),
            const SignInMethod(method: 'Sign in with Apple', icon: Icons.apple),
            const SizedBox(height: 24),
            const SignInMethod(
                icon: Icons.account_circle_outlined,
                method: 'Sign in with Facebook'),
            const SizedBox(height: 24),
            const SignInMethod(
                method: 'Sign in with Google', icon: Icons.person),
            const SizedBox(height: 24),
            const Text(
              'Already have an account?',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInView()));
              },
              child: const Text(
                'login',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignInMethod extends StatelessWidget {
  const SignInMethod({
    super.key,
    required this.method,
    required this.icon,
  });
  final String method;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 0.5)),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          method,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }
}
