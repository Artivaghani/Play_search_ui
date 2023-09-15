import 'package:arti_vaghani_practicle/config/config_packages.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.choosePaymentMethod,
              style: Get.theme.textTheme.bodyLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.radio,
                  width: AppDimen.dimen30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Get.theme.dividerColor),
                      color: Get.theme.scaffoldBackgroundColor),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppDimen.dimen30, vertical: AppDimen.dimen10),
                  child: Text(
                    AppString.gatwayCC,
                    style: Get.theme.textTheme.headlineLarge,
                  ),
                ).paddingOnly(left: AppDimen.dimen20)
              ],
            ).paddingSymmetric(vertical: AppDimen.dimen100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonBtn(AppString.cencel, () {
                  Get.back();
                }, width: AppDimen.dimen180),
                SizedBox(
                  width: AppDimen.dimen16,
                ),
                CommonBtn(AppString.continu, () {},
                    width: AppDimen.dimen180, isFill: true),
              ],
            ).paddingOnly(top: AppDimen.dimen50)
          ],
        ),
      ),
    );
  }
}
