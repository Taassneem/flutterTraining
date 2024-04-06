import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            'My Page',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          centerTitle: true),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            HomeFeature(
              name: 'Favorites',
              icon: Icons.arrow_forward_ios,
            ),
            HomeFeature(
              name: 'Points',
              icon: Icons.arrow_forward_ios,
            ),
            HomeFeature(
              name: 'Exchanged Books',
              icon: Icons.arrow_forward_ios,
            ),
            HomeFeature(
              name: 'Purchased Books',
              icon: Icons.arrow_forward_ios,
            ),
            HomeFeature(
              name: 'Location/Language',
              icon: Icons.arrow_forward_ios,
            ),
            HomeFeature(
              name: 'Delivery Address',
              icon: Icons.arrow_forward_ios,
            ),
            HomeFeature(
              name: 'Notification',
              icon: Icons.arrow_forward_ios,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Logout',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeFeature extends StatelessWidget {
  const HomeFeature({
    super.key,
    required this.name,
    required this.icon,
  });
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Icon(
            icon,
            color: const Color(0xffB1BEBF),
          )
        ],
      ),
    );
  }
}
