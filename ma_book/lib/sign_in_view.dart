import 'package:flutter/material.dart';
import 'package:ma_book/home_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Welcome to MaBook',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
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
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
