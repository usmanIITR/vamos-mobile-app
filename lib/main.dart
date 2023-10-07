import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vamos/services/local/local_storage.dart';
import 'package:vamos/ui/screens/home_screen.dart';
import 'package:vamos/ui/screens/login_screen.dart';
import 'package:vamos/ui/screens/signup2_screen.dart';
import 'package:vamos/ui/screens/signup_screen.dart';
import 'package:vamos/ui/screens/splash_screen.dart';
import 'package:vamos/ui/screens/verification_screen.dart';
import 'package:vamos/utils/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageService.getInstance();
  runApp(const Vamos());
}

class Vamos extends StatelessWidget {
  const Vamos({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Vamos',
          theme:
              ThemeData(fontFamily: 'Poppins', primaryColor: AppTheme.purple),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          defaultTransition: Transition.cupertino,
          getPages: _getPages(),
          home: const SplashScreen(),
        );
      },
    );
  }

  List<GetPage<dynamic>>? _getPages() {
    return [
      GetPage(name: '/home', page: () => const HomeScreen()),
      GetPage(name: '/login', page: () => const LoginScreen()),
      GetPage(name: '/splash', page: () => const SplashScreen()),
      GetPage(name: '/signup', page: () => SignUpScreen()),
      GetPage(name: '/signup2', page: () => SignUp2Screen()),
      GetPage(name: '/verify', page: () => const VerificationScreen()),
    ];
  }
}
