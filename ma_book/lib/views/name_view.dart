import 'package:flutter/material.dart';

import 'widget/name_view_body.dart';

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
        child: NameViewBody(),
      ),
    );
  }
}
