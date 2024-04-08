import 'package:flutter/material.dart';

class WatchBookView extends StatelessWidget {
  const WatchBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset('assets/images/background.png'),
            Positioned(
                width: MediaQuery.sizeOf(context).width,
                top: 20,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xffDDB57F),
                          ),
                          Text('Back',
                              style: TextStyle(
                                  color: Color(0xffDDB57F),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20))
                        ],
                      ),
                      const SizedBox(height: 90),
                      Stack(children: [
                        Image.asset('assets/images/harryBotter.png'),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 35,
                            height: 30,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                color: Colors.white),
                            child: const Icon(Icons.favorite,
                                color: Color(0xff39594E)),
                          ),
                        )
                      ]),
                      const SizedBox(height: 24),
                      const Text('Harry potter \n and the philosophers stone',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24)),
                      const SizedBox(height: 36),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BookInformation(
                            title: '100',
                            description: 'pages',
                          ),
                          CustomDivider(),
                          // SizedBox(
                          //   width: 50,
                          //   child: VerticalDivider(
                          //     width: 50,
                          //     indent: 10,
                          //     endIndent: 100,
                          //     thickness: 10,
                          //     color: Colors.red,
                          //   ),
                          // ),
                          BookInformation(
                            title: 'Author',
                            description: 'J.K. Rowling',
                          ),
                          CustomDivider(),
                          BookInformation(title: '2017', description: 'publish')
                        ],
                      ),
                      const SizedBox(height: 36),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffDDB57F),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text('Read Book',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xffB5B5B5)),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text('Share book',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xffC1C1C1))),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Create Club Now?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffDDB57F)))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, // Adjust height as needed
      width: 2,
      color: Colors.black,
    );
  }
}

class BookInformation extends StatelessWidget {
  const BookInformation({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
        Text(description,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xffA6A6A6))),
      ],
    );
  }
}
