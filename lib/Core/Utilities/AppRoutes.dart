import 'package:findbizdata/Presentation/Pages/Home/home_page.dart';
import 'package:get/get.dart';
import 'package:findbizdata/Presentation/Pages/exportpages.dart';

class AppRoutes {
  static String INITIAL = "/";
  static String HOME = "/home";

  static List<GetPage> routes = [
    GetPage(
      name: INITIAL,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: HOME,
      page: () => HomePage(),
    ),
  ];

}
