import 'package:arti_vaghani_practicle/config/config_packages.dart';

Widget CommonBtn(String title, Function() onTap,
        {double? width,
        double? height,
        Color? borderColor,
        bool isFill = false}) =>
    SizedBox(
      height: height,
      width: width,
      child: TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
              foregroundColor:
                  MaterialStateProperty.all<Color>(Get.theme.dividerColor),
              backgroundColor: MaterialStateProperty.all<Color>(isFill
                  ? Get.theme.primaryColor
                  : Get.theme.scaffoldBackgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                          color: isFill
                              ? Get.theme.primaryColor
                              : Get.theme.dividerColor)))),
          onPressed: onTap,
          child:
              Text(title,  style: Get.theme.textTheme.bodyLarge,)),
    );
   
