import 'package:flutter/material.dart';
import 'package:flutter_testing/core/cache/cache_helper.dart';
import 'package:flutter_testing/core/utils/service_locator.dart';
import 'package:flutter_testing/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupSreviceLocator();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: GoogleFonts.poppins),
      home: SplashView(),
    );
  }
}
