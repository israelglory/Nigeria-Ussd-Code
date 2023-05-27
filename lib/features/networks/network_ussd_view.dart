import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nigeria_ussd_codes/components/list_item.dart';
import 'package:nigeria_ussd_codes/features/networks/network_controller.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

import '../../utils/utils.dart';

class NetworkUssdView extends StatelessWidget {
  final String network;
  const NetworkUssdView({super.key, required this.network});

  @override
  Widget build(BuildContext context) {
    final image = network == 'MTN'
        ? AppAssets.mtnLogo
        : network == 'Airtel'
            ? AppAssets.airtelLogo
            : network == 'Glo'
                ? AppAssets.gloLogo
                : AppAssets.etisalatLogo;
    return GetBuilder<NetworkContoller>(
      init: NetworkContoller(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: AppText('$network USSD'),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(image),
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
        );
      },
    );
  }
}
