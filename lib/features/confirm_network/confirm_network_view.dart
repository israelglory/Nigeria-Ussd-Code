import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nigeria_ussd_codes/data/confirm_network_data.dart';
import 'package:nigeria_ussd_codes/features/confirm_network/confirm_network_controller.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

import '../../components/custom_drop_down.dart';

class ConfirmNetworkView extends StatelessWidget {
  const ConfirmNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConfirmNetworkController>(
      init: ConfirmNetworkController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const AppText('Confirm Network'),
          ),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    'Select Phone Number Prefix',
                    size: 14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomDropDown(
                    value: controller.selectedValue,
                    itemsList: confirmNetworkList,
                    dropdownColor: Colors.white,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppText(
                    controller.selectedValue.network,
                    size: 25,
                    fontWeight: FontWeight.bold,
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
