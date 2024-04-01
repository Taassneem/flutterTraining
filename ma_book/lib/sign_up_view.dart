import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ma_book/sign_in_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isVisability = true;
  bool isChecked = false;

  _SignUpViewState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Welcome to MaBook',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const TextField(textInputAction: TextInputAction.next),
              const SizedBox(height: 24),
              TextField(
                keyboardType: TextInputType.number,
                obscureText: isVisability,
                textInputAction: TextInputAction.done,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14))
                ],
              ),
              const SizedBox(height: 16),
              Container(
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
              const SizedBox(height: 68),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.5)),
                child: const ListTile(
                  leading: Icon(Icons.apple),
                  title: Text(
                    'Sign in with Apple',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.5)),
                child: const ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title: Text(
                    'Sign in with Facebook',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.5)),
                child: const ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'Sign in with Google',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
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
      ),
    );
  }
}
