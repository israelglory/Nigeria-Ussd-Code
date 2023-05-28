import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nigeria_ussd_codes/components/list_item.dart';
import 'package:nigeria_ussd_codes/features/general_code.dart/general_ussd_controller.dart';

import '../../utils/exports.dart';
import '../../utils/utils.dart';

class GeneralUssdView extends StatelessWidget {
  const GeneralUssdView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GeneralUssdController>(
      init: GeneralUssdController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const AppText('General USSD'),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 32.0,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.general),
                    radius: 40,
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final ussd = controller.ussdList[index];
                        return UssdListItem(
                            onCall: () {
                              String no = Uri.encodeComponent(ussd.code);
                              launchUrlStart(url: 'tel://$no');
                            },
                            onCopy: () async {
                              await Clipboard.setData(
                                      ClipboardData(text: ussd.code))
                                  .then(
                                (value) => Get.snackbar(
                                  'Text Copied',
                                  ussd.code,
                                  backgroundColor: AppColors.primaryColor,
                                  colorText: Colors.white,
                                  snackPosition: SnackPosition.TOP,
                                ),
                              );
                            },
                            code: ussd.code,
                            description: ussd.description);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 16.0,
                        );
                      },
                      itemCount: controller.ussdList.length,
                    ),
                  ),
                ],
              ),
              if (controller.isBannerAdReady)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: controller.bannerAd.size.width.toDouble(),
                    height: controller.bannerAd.size.height.toDouble(),
                    child: AdWidget(ad: controller.bannerAd),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
