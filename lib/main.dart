import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:nigeria_ussd_codes/features/home/home_view.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ///I need a delay
  //await Future.delayed(const Duration(seconds: 30));
  MobileAds.instance.initialize();
  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MyApp(), // Wrap your app
    // ),
    const MyApp(),
  );
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //
      //useInheritedMediaQuery: true,
      //locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      //
      //theme: AppTheme.light(),
      //darkTheme: AppTheme.dark(),
      //themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF10225e, AppColors.primarySwatch),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
      ),
      home: const HomeView(),
      //getPages: RoutesClass.routes,
    );
  }
}
