import 'dart:io';

import 'dart:io' show Platform;
import 'package:dolphins_mall/Core/constants/strings.dart';


import 'package:built_value/built_value.dart';
import 'package:dolphins_mall/App/app.dart';
import 'package:dolphins_mall/Injection.dart';
import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
String version ="";
List<String> testDeviceIds = ['CEC696FEC7BC222F50D74D74ACD13A8A'];

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}


//getTranslated(context,"home_page")!,
void main() async {
  HttpOverrides.global =  MyHttpOverrides();
//SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//  ));

  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  //RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList("CEC696FEC7BC222F50D74D74ACD13A8A"));
  await iniGetIt();
 // await CountryCodes.init();
  // await Gleap.initialize(
  //   token: '93AmJho7YPNoLs3F5Oe3jPZHlxF7wjZ5',
  // );
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        systemNavigationBarColor: Colors.black
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  // RequestConfiguration configuration = RequestConfiguration(testDeviceIds: testDeviceIds);
  //
  // MobileAds.instance.updateRequestConfiguration(configuration);
  runApp(MyApp());
}

///keytool -genkey -v -keystore upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
//// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
//// flutter pub get && flutter pub run build_runner watch
//// flutter logs

//// flutter build apk --split-per-abi
//// flutter build appbundle
//flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi --obfuscate --split-debug-info=Bubbles\build\app\outputs\flutter-apk


//todo : make loading finish once bubbles are successfuly settled correctly
// git push origin main -f               to Force push code and not worry about pulling anything


//…or create a new repository on the command line
//echo "# Bubbles" >> README.md
//git init
//git add README.md
//git commit -m "first commit"
//git branch -M sub_sub
//https://github.com/Saedxd/Bubbles/tree/sub_main
//git remote add origin https://github.com/Optikkaltech-io/mentorshipAppFlutter
//git push -u origin main
//…or push an existing repository from the command line


//git remote add origin https://github.com/Saedxd/-.git
//git branch -M main
//git push -u origin main


class AdMobService {
  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return ANDROID_BANNER_ADD_ID;
    } else if (Platform.isIOS) {
      return "";
    }
    return null;
  }

  static String? get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return ANDROID_INTERSTITIAL_ADD_ID;
    } else if (Platform.isIOS) {
      return "";
    }
    return null;
  }

}
