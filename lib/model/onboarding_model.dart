
import 'package:app_design/constant/constant.dart';

class OnBoarding {
  String title;
  String description;
  String image;

  OnBoarding({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnBoarding> onBoardinglist = [
  OnBoarding(
    title: 'Find Repair Shops Near You',
    image: AppImages.onboarding1,
    description:
        'Our app uses advanced GPS technology to help you find trusted repair services nearby, saving you time and hassle.',
  ),
  OnBoarding(
      title: 'Reliable and Certified Services',
      image: AppImages.onboarding2,
      description:
          'Access a network of certified auto repair shops that offer high-quality and reliable services. '),
  OnBoarding(
      title: "Quick and Reliable Emergency Assistance",
      image: AppImages.onboarding3,
      description:
          'Get help when you need it most. Our app connects you with emergency roadside assistance for quick and reliable service.'),
];
