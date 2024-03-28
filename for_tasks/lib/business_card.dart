import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Business Card',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/login.png'),
            const Text(
              'Tasneem Radwan',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              color: const Color(0xff3E494A),
              child: const Row(
                children: [
                  Icon(Icons.mail_outline, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'tasnemradwan87@gamil.com',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: const Color(0xff3E494A),
              child: const Row(
                children: [
                  Icon(Icons.phone, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    '+201149834479',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
