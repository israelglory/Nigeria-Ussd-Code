// ad_helper.dart
import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      //'ca-app-pub-3925626843029360~9347097049'
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3925626843029360~1524447343';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
