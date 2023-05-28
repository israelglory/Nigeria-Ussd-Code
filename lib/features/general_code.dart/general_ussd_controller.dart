import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nigeria_ussd_codes/ad_helper.dart';
import 'package:nigeria_ussd_codes/data/other_codes_data.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

class GeneralUssdController extends GetxController {
  final ussdList = generalCode;
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
}
