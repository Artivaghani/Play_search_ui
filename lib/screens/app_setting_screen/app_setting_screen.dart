import 'package:arti_vaghani_practicle/config/config_packages.dart';

class AppSettingScreen extends StatelessWidget {
  const AppSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppWidgtes.commonAppBar(AppString.appSetting),
          Expanded(
              child: ListView(
            children: [getNotificationView(), netWorkView(), getLegalView(),AppWidgtes.divider,AppWidgtes.logout()],
          ))
        ],
      )),
    );
  }

  getNotificationView() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.notifications,
            style: Get.theme.textTheme.headlineSmall,
          ),
          AppWidgtes.getSettingTitleView(Icons.notifications_none_outlined,
              AppString.allowNotification, AppString.turnNotifications,
              titleWidget: Switch(
                // This bool value toggles the switch.
                value: true,
                activeColor: Colors.deepPurple,
                onChanged: (bool value) {},
              ),padding: EdgeInsets.symmetric(vertical: AppDimen.dimen10,horizontal: AppDimen.dimen20)).paddingSymmetric(vertical: AppDimen.dimen16)
        ],
      ).paddingOnly(
          top: AppDimen.dimen40,
          left: AppDimen.dimen10,
          right: AppDimen.dimen10,
          bottom: AppDimen.dimen10);

  Widget netWorkView() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.network,
            style: Get.theme.textTheme.headlineSmall,
          ),
          AppWidgtes.getSettingTitleView(
            Icons.wifi,
            AppString.streamingDataUsage,
            AppString.automatic,
          ).paddingSymmetric(vertical: AppDimen.dimen16),
          AppWidgtes.getSettingTitleView(
            Icons.speed,
            AppString.internetSpeedTest,
            AppString.checkYourNetworkSpeed,
          ).paddingOnly(bottom: AppDimen.dimen16)
        ],
      ).paddingAll(
        AppDimen.dimen10,
      );

  getLegalView() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.legal,
            style: Get.theme.textTheme.headlineSmall,
          ),
          AppWidgtes.getProfileTitleView(
                  AppImages.file, AppString.openSourceLicense,
                  isNext: false)
              .paddingSymmetric(vertical: AppDimen.dimen16),
          AppWidgtes.getProfileTitleView(
                  AppImages.privacy, AppString.privacyPolicy,
                  isNext: false)
              .paddingOnly(bottom: AppDimen.dimen16),
          AppWidgtes.getProfileTitleView(
                  AppImages.color, AppString.cookiesPreference,
                  isNext: false)
              .paddingOnly(bottom: AppDimen.dimen16),
          AppWidgtes.getProfileTitleView(
                  AppImages.file, AppString.termsOfUse,
                  isNext: false)
              .paddingOnly(bottom: AppDimen.dimen16)
        ],
      ).paddingAll(
        AppDimen.dimen10,
      );
}
