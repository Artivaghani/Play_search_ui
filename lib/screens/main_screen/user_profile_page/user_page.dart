import 'package:arti_vaghani_practicle/config/config_packages.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Image.asset(
              AppImages.profile,
              width: AppDimen.dimen150,
              height: AppDimen.dimen150,
            ).paddingOnly(top: AppDimen.dimen30),
            Text(
              'Aranya Prakash Mahapatra',
              style: Get.theme.textTheme.headlineLarge,
            ).paddingSymmetric(vertical: AppDimen.dimen8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.edit,
                  width: AppDimen.dimen16,
                ),
                Text(AppString.manageProfile,
                        style: Get.theme.textTheme.headlineSmall)
                    .paddingSymmetric(horizontal: AppDimen.dimen6),
              ],
            ),
            AppWidgtes.getProfileTitleView(
                    AppImages.video, AppString.subscription)
                .paddingOnly(top: AppDimen.dimen40, bottom: AppDimen.dimen14),
            InkWell(
              onTap: () => Get.to(const AppSettingScreen()),
              child: AppWidgtes.getProfileTitleView(
                      AppImages.setting, AppString.appSetting)
                  .paddingOnly(bottom: AppDimen.dimen14),
            ),
            AppWidgtes.getProfileTitleView(
                    AppImages.proSetting, AppString.accountSettings)
                .paddingOnly(bottom: AppDimen.dimen14),
            AppWidgtes.getProfileTitleView(AppImages.help, AppString.help)
                .paddingOnly(bottom: AppDimen.dimen14),
            AppWidgtes.getProfileTitleView(
                AppImages.watch, AppString.watchHistory,
                titleWidget: Text(
                  AppString.clear,
                  style: Get.theme.textTheme.labelLarge,
                )).paddingOnly(bottom: AppDimen.dimen25),
          ],
        ),
        AppWidgtes.divider,
        AppWidgtes.logout()
      ],
    );
  }
}
