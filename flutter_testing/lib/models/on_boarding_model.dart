
class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  static List<OnBoardingModel> onBoardingView = [
    OnBoardingModel(
      image: 'assets/images/onBoarding1.png',
      title: 'Uni App',
      subTitle: 'Where all your lectures and materials in one place',
      
    ),
    OnBoardingModel(
      image: 'assets/images/onBoarding2.png',
      title: 'Private Groups',
      subTitle: 'Subject groups to share lectures,materials and chat with other colleges',
    ),
    OnBoardingModel(
      image: 'assets/images/onBoarding3.png',
      title: 'Local Files',
      subTitle: 'Access the media without internet',
    )
  ];
}
