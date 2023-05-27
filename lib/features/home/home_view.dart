import 'package:nigeria_ussd_codes/features/home/home_controller.dart';
import 'package:nigeria_ussd_codes/features/networks/network_ussd_view.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const AppText('Nigeria USSD Code'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 96.0,
                right: 96.0,
                bottom: 32.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeItem(
                        text: 'MTN',
                        image: AppAssets.mtnLogo,
                        onTap: () {
                          Get.to(const NetworkUssdView(network: 'MTN'));
                        },
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      HomeItem(
                        text: 'Airtel',
                        image: AppAssets.airtelLogo,
                        onTap: () {
                          Get.to(const NetworkUssdView(network: 'Airtel'));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeItem(
                        text: 'Glo',
                        image: AppAssets.gloLogo,
                        onTap: () {
                          Get.to(const NetworkUssdView(network: 'Glo'));
                        },
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      HomeItem(
                        text: '9Mobile',
                        image: AppAssets.etisalatLogo,
                        onTap: () {
                          Get.to(const NetworkUssdView(network: '9Mobile'));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
