import 'package:flutter/material.dart';
import 'package:ma_book/views/watch_book_view.dart';

import 'home_feature.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeFeature(
          name: 'Favorites',
          icon: Icons.arrow_forward_ios,
        ),
        const HomeFeature(
          name: 'Points',
          icon: Icons.arrow_forward_ios,
        ),
        HomeFeature(
          name: 'Exchanged Books',
          icon: Icons.arrow_forward_ios,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const WatchBookView())));
          },
        ),
        const HomeFeature(
          name: 'Purchased Books',
          icon: Icons.arrow_forward_ios,
        ),
        const HomeFeature(
          name: 'Location/Language',
          icon: Icons.arrow_forward_ios,
        ),
        const HomeFeature(
          name: 'Delivery Address',
          icon: Icons.arrow_forward_ios,
        ),
        const HomeFeature(
          name: 'Notification',
          icon: Icons.arrow_forward_ios,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Logout',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.red),
          ),
        )
      ],
    );
  }
}
