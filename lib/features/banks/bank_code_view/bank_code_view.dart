import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nigeria_ussd_codes/components/list_item.dart';
import 'package:nigeria_ussd_codes/data/banks_data.dart';
import 'package:nigeria_ussd_codes/features/banks/bank_code_view/bank_code_controller.dart';
import 'package:nigeria_ussd_codes/utils/utils.dart';

import '../../../utils/exports.dart';

class BankCodeView extends StatelessWidget {
  final String bankName;
  const BankCodeView({super.key, required this.bankName});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BankCodeController>(
      init: BankCodeController(),
      initState: (state) {
        state.controller?.update();
      },
      builder: (controller) {
        List<BankUssd> ussdList = getbank(bankName);
        print(ussdList.length);
        final bankLogo = getBankLogo(bankName);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: AppText('$bankName USSD'),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 32.0,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(bankLogo),
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
                        final ussd = ussdList[index];
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
                      itemCount: ussdList.length,
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
