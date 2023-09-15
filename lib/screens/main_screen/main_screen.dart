import 'package:arti_vaghani_practicle/config/config_packages.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Image.asset(
                AppImages.menu,
                width: AppDimen.dimen30,
                color: Get.theme.primaryColor,
              ),
            ),
            Expanded(
                child: Obx(() =>
                    mainController.menuList[mainController.selectedMenu.value]))
          ],
        ).paddingSymmetric(
            vertical: AppDimen.dimen20, horizontal: AppDimen.dimen20),
      ),
      bottomNavigationBar: getBottomNavigation,
    );
  }

  Widget get getBottomNavigation => Container(
        color: Get.theme.cardColor,
        height: AppDimen.dimen80,
        child: Row(
          children: [
            Expanded(child: getMenuItem(AppImages.home, AppString.home, 0)),
            Expanded(child: getMenuItem(AppImages.search, AppString.search, 1)),
            Expanded(
                child: getMenuItem(AppImages.download, AppString.downloads, 2)),
            Expanded(child: getMenuItem(AppImages.user, AppString.user, 3)),
          ],
        ).paddingSymmetric(
            vertical: AppDimen.dimen10, horizontal: AppDimen.dimen10),
      );

  getMenuItem(String image, String title, int index) => Obx(() => InkWell(
        onTap: () {
          mainController.selectedMenu.value = index;
        },
        child: Column(children: [
          Image.asset(
            image,
            color: mainController.selectedMenu.value == index
                ? Get.theme.dividerColor
                : Get.theme.hintColor,
            width: AppDimen.dimen25,
          ),
          Text(
            title,
            style: Get.theme.textTheme.bodyMedium!.copyWith(
                color: mainController.selectedMenu.value == index
                    ? Get.theme.dividerColor
                    : Get.theme.hintColor),
          ).paddingOnly(top: AppDimen.dimen4),
        ]),
      ));
}
