import 'package:arti_vaghani_practicle/config/config_packages.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  SearchPageController mainController = Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getSearchView(),
        SizedBox(
          height: AppDimen.dimen20,
        ),
        Expanded(
            child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // number of items in each row
              mainAxisSpacing: 0.3, // spacing between rows
              crossAxisSpacing: 0.3, // spacing between columns
              childAspectRatio: 1.4),
          padding: const EdgeInsets.all(8.0), // padding around the grid
          itemCount: mainController.musicList.length, // total number of items
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Get.to(const PaymentScreen());
                },
                child: GetBuilder<SearchPageController>(
                    builder: (controller) => Stack(
                          children: [
                            Image.asset(
                              mainController.musicList[index],
                              fit: BoxFit.cover,
                            ),
                            if (controller.searchController.text
                                    .toLowerCase() ==
                                'Watch Later'.toLowerCase())
                              Positioned(
                                right: 10,
                                bottom: 16,
                                child: Image.asset(
                                  AppImages.play,
                                  width: AppDimen.dimen25,
                                ),
                              )
                          ],
                        )));
          },
        ))
      ],
    ).paddingOnly(top: AppDimen.dimen40);
  }

  getSearchView() => GetBuilder<SearchPageController>(
        builder: (controller) => CommonTextField(
          controller: mainController.searchController,
          maxLines: 1,
          hintText: AppString.search,
          prefixIcon: Icon(
            Icons.search,
            size: AppDimen.dimen30,
            color: Get.theme.dividerColor,
          ),
          suffixIcon: controller.searchController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    mainController.searchController.text = '';
                    controller.update();
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: Get.theme.dividerColor,
                  ))
              : null,
          style: Get.theme.textTheme.headlineSmall,
          onChanged: (p0) {
            controller.update();
          },
        ),
      );
}
