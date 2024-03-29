import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nigeria_ussd_codes/features/banks/bank_code_view/bank_code_view.dart';
import 'package:nigeria_ussd_codes/features/banks/bank_home/bank_home_controller.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

class BankHomeView extends StatelessWidget {
  const BankHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BankHomeController>(
      init: BankHomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const AppText('Select Banks'),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 32.0, right: 40.0, left: 40, bottom: 32.0),
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    //maxCrossAxisExtent: 300,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                    children: [
                      ListItem(
                        image: AppAssets.firstBank,
                        onTap: () {
                          Get.to(
                              () => const BankCodeView(bankName: 'First Bank'));
                        },
                        text: 'First Bank',
                      ),
                      ListItem(
                        image: AppAssets.fcmbBank,
                        onTap: () {
                          Get.to(() => const BankCodeView(bankName: 'FCMB'));
                        },
                        text: 'FCMB Bank',
                      ),
                      ListItem(
                        image: AppAssets.gtBank,
                        onTap: () {
                          Get.to(() => const BankCodeView(bankName: 'GTB'));
                        },
                        text: 'GT Bank',
                      ),
                      ListItem(
                        image: AppAssets.accessBank,
                        onTap: () {
                          Get.to(() =>
                              const BankCodeView(bankName: 'Access Bank'));
                        },
                        text: 'Access Bank',
                      ),
                      ListItem(
                        image: AppAssets.ecoBank,
                        onTap: () {
                          Get.to(
                              () => const BankCodeView(bankName: 'Eco Bank'));
                        },
                        text: 'Eco Bank',
                      ),
                      ListItem(
                        image: AppAssets.polarisBank,
                        onTap: () {
                          Get.to(() => const BankCodeView(bankName: 'Polaris'));
                        },
                        text: 'Polaris Bank',
                      ),
                      ListItem(
                        image: AppAssets.ubaBank,
                        onTap: () {
                          Get.to(
                              () => const BankCodeView(bankName: 'UBA Bank'));
                        },
                        text: 'UBA Bank',
                      ),
                      ListItem(
                        image: AppAssets.stanbicBank,
                        onTap: () {
                          Get.to(() => const BankCodeView(bankName: 'Stanbic'));
                        },
                        text: 'Stanbic IBTC Bank',
                      ),
                      ListItem(
                        image: AppAssets.wemaBank,
                        onTap: () {
                          Get.to(() => const BankCodeView(bankName: 'Wema'));
                        },
                        text: 'Wema Bank',
                      ),
                      ListItem(
                        image: AppAssets.sterlingBank,
                        onTap: () {
                          Get.to(
                              () => const BankCodeView(bankName: 'Sterling'));
                        },
                        text: 'Sterling Bank',
                      ),
                      ListItem(
                        image: AppAssets.unionBank,
                        onTap: () {
                          Get.to(
                              () => const BankCodeView(bankName: 'Union Bank'));
                        },
                        text: 'Union Bank',
                      ),
                      ListItem(
                        image: AppAssets.fidelityBank,
                        onTap: () {
                          Get.to(() =>
                              const BankCodeView(bankName: 'Fidelity Bank'));
                        },
                        text: 'Fidelity Bank',
                      ),
                      ListItem(
                        image: AppAssets.zenithBank,
                        onTap: () {
                          Get.to(() => const BankCodeView(bankName: "Zenith"));
                        },
                        text: 'Zenith Bank',
                      ),
                      ListItem(
                        image: AppAssets.bank,
                        onTap: () {
                          Get.to(() => const BankCodeView(bankName: "Others"));
                        },
                        text: 'Other Banks Code',
                      ),
                    ],
                  ),
                ),
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

class ListItem extends StatelessWidget {
  final String image;
  final String text;
  final Function() onTap;
  const ListItem(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 40,
              ),
              const SizedBox(
                height: 16.0,
              ),
              AppText(
                text,
                size: 18,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
