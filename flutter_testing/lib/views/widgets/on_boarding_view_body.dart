import 'package:flutter/material.dart';
import 'package:flutter_testing/core/cache/cache_helper.dart';
import 'package:flutter_testing/core/utils/service_locator.dart';
import 'package:flutter_testing/models/on_boarding_model.dart';
import 'package:flutter_testing/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({
    super.key,
  });

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                index != 0
                    ? GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back_ios))
                    : const SizedBox.shrink(),
                index != 2
                    ? TextButton(
                        onPressed: () {
                          getIt
                              .get<CacheHelper>()
                              .saveData(key: 'OnBoardingVisited', value: true);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const HomeView()));
                        },
                        child: const Text('Skip',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)))
                    : Container(height: 40),
              ],
            ),
            const SizedBox(height: 40),
            Image.asset(OnBoardingModel.onBoardingView[index].image),
            const SizedBox(height: 40),
            Text(OnBoardingModel.onBoardingView[index].title,
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(height: 24),
            Text(OnBoardingModel.onBoardingView[index].subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                )),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Color(0xff525FE0),
                      // activeStrokeWidth: 1,
                      dotWidth: 10,
                      dotHeight: 10,
                      offset: 0.5,
                    )),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff525FE0)),
                child: index != 2
                    ? IconButton(
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.slowMiddle);
                        },
                        icon: const Icon(
                          Icons.arrow_forward_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          getIt
                              .get<CacheHelper>()
                              .saveData(key: 'OnBoardingVisited', value: true);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const HomeView()));
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
