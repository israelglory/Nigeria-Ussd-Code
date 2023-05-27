import 'package:google_fonts/google_fonts.dart';

import 'package:nigeria_ussd_codes/features/home/home_view.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

void main() {
  runApp(const MyApp());
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
