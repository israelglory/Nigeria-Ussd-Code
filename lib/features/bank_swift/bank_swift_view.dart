import 'package:flutter/services.dart';
import 'package:nigeria_ussd_codes/components/list_item.dart';
import 'package:nigeria_ussd_codes/features/bank_swift/bank_swift_controller.dart';

import '../../utils/exports.dart';

class BankSwiftView extends StatelessWidget {
  const BankSwiftView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BankSwiftController>(
      init: BankSwiftController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const AppText('Bank Swift Code'),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32.0,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(AppAssets.swiftCode),
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
                        showCall: false,
                        onCall: () {},
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
