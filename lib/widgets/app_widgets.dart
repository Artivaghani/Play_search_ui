import 'package:arti_vaghani_practicle/config/config_packages.dart';

class AppWidgtes {
  static Widget getProfileTitleView(String img, String title,
          {Widget? titleWidget, bool isNext = true,}) =>
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.darkBlack,
        ),
        padding: EdgeInsets.symmetric(
            vertical: AppDimen.dimen20, horizontal: AppDimen.dimen20),
        child: Row(
          children: [
            Image.asset(
              img,
              width: AppDimen.dimen30,
            ),
            Expanded(
                child: Text(
              title,
              style: Get.theme.textTheme.headlineSmall,
            ).paddingSymmetric(horizontal: AppDimen.dimen20)),
            if (titleWidget != null)
              titleWidget.paddingSymmetric(horizontal: AppDimen.dimen25),
            if (isNext)
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: AppDimen.dimen20,
              )
          ],
        ),
      );

  static Widget getSettingTitleView(
          IconData icon, String title, String subTitle,
          {Widget? titleWidget,EdgeInsetsGeometry? padding}) =>
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.darkBlack,
        ),
        padding:padding?? EdgeInsets.symmetric(
            vertical: AppDimen.dimen20, horizontal: AppDimen.dimen20),
        child: Row(
          children: [
            Icon(
              icon,
              size: AppDimen.dimen30,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Get.theme.textTheme.bodySmall,
                ),
                Text(
                  subTitle,
                  style: Get.theme.textTheme.bodyMedium!
                      .copyWith(fontSize: FontDimen.dimen12),
                ),
              ],
            ).paddingSymmetric(horizontal: AppDimen.dimen20)),
            if (titleWidget != null)
              titleWidget.paddingSymmetric(horizontal: AppDimen.dimen6),
          ],
        ),
      );

  static Widget get divider => Container(
        width: double.infinity,
        height: 0.6,
        color: AppColors.deviderColor,
      );

  static Widget commonAppBar(String title) => Row(
        children: [
          IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_rounded,
                size: AppDimen.dimen30,
              )),
          Text(
            title,
            style: Get.theme.textTheme.headlineMedium,
          ).paddingOnly(left: AppDimen.dimen10),
        ],
      );

  static Widget logout() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.logout,
            size: AppDimen.dimen35,
          ),
          Text(
            AppString.logout,
            style: Get.theme.textTheme.headlineSmall,
          ).paddingSymmetric(horizontal: AppDimen.dimen10),
        ],
      ).paddingSymmetric(vertical: AppDimen.dimen25);
}
