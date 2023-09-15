
import 'package:arti_vaghani_practicle/config/config_packages.dart';

class MainController extends GetxController {

  RxInt selectedMenu = 1.obs;

  

  List<Widget> menuList = [
    Container(),
    SearchPage(),
    Container(),
    const UserPage()
  ];

  
}
