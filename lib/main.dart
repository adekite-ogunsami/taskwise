import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:taskwise/firebase_options.dart';
import 'package:taskwise/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:taskwise/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:taskwise/src/repository/authentication_repository/authentication_repository.dart';
import 'package:taskwise/src/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TaskwiseTheme.lightTheme,
      darkTheme: TaskwiseTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => OnBoardingScreen()),
        GetPage(name: '/welcome', page: () => WelcomeScreen()),
      ],
    );
  }
}

