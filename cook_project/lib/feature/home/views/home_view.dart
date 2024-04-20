import 'package:cook_project/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: AppColor.darkYellow,
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.textField,
                        blurRadius: 15,
                        offset: Offset(0, 4))
                  ]),
              height: 120,
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      'Good morning,',
                      style: GoogleFonts.baloo2(
                          color: AppColor.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      ' Lora ',
                      style: GoogleFonts.baloo2(
                          color: AppColor.red,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                subtitle: Text(
                  'Let’s find a delicious recipe!',
                  style: GoogleFonts.baloo2(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                trailing: Image.asset('assets/images/avatar.png'),
                contentPadding:
                    const EdgeInsets.only(top: 36, left: 18, right: 18),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 20),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, color: AppColor.hintText),
                        hintText: 'Search for a recipe / an ingredient',
                        contentPadding: EdgeInsets.only(top: 13),
                        hintStyle: TextStyle(
                            color: AppColor.hintText,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: AppColor.textField),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColor.textField,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.format_align_center),
                )
              ],
            ),
            const SizedBox(height: 20),
            const ListViewTitle(title: 'For Lora'),
            const SizedBox(height: 100, child: RecipeListView()),
            const SizedBox(height: 20),
            const ListViewTitle(title: 'Popular among your friends'),
            const SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}

class ListViewTitle extends StatelessWidget {
  const ListViewTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        title,
        style: GoogleFonts.baloo2(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class RecipeListView extends StatelessWidget {
  const RecipeListView({
    super.key,
  });
  final List<String> images = const [
    'assets/images/meal4.png',
    'assets/images/meal3.png',
    'assets/images/meal2.png',
    'assets/images/meal3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          images[index],
          // width: 180,
        );
      },
    );
  }
}
