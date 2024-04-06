import 'package:flutter/material.dart';

class NameView extends StatelessWidget {
  const NameView({super.key});

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
            TextFormField(textInputAction: TextInputAction.next),
            const SizedBox(height: 24),
            TextFormField(textInputAction: TextInputAction.done),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              color: const Color(0xff3E494A),
              child: const Center(
                child: Text(
                  'Ready to Go',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
