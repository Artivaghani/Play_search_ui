import 'package:arti_vaghani_practicle/config/config_packages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(MainScreen());
      },
    );
    return  Scaffold(
      body: Center(child: Text('Hello Welcome,\n\n This is a splash screen',textAlign: TextAlign.center,style: Get.theme.textTheme.bodyMedium,)),
    );
  }
}