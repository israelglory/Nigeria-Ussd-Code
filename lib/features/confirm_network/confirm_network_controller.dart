import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nigeria_ussd_codes/ad_helper.dart';
import 'package:nigeria_ussd_codes/data/confirm_network_data.dart';
import 'package:nigeria_ussd_codes/models/confirm_network_model.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

class ConfirmNetworkController extends GetxController {
  ConfirmNetworkModel selectedValue = confirmNetworkList[0];
  late BannerAd bannerAd;
  bool isBannerAdReady = false;

  @override
  void onInit() async {
    super.onInit();

    _loadBannerAd();
  }

  void _loadBannerAd() {
    bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady = true;
          update();
        },
        onAdFailedToLoad: (ad, err) {
          isBannerAdReady = false;
          ad.dispose();
          update();
        },
      ),
    );

    bannerAd.load();
  }

  void onSelected(ConfirmNetworkModel value) {
    selectedValue = value;
    update();
  }
}
