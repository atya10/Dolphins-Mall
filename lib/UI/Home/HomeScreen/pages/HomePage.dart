
import 'dart:developer';
import 'package:dolphins_mall/Data/prefs_helper/iprefs_helper.dart';
import 'package:dolphins_mall/Injection.dart';
import 'package:dolphins_mall/UI/Chat/pages/ChatPage.dart';
import 'package:dolphins_mall/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:dolphins_mall/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:dolphins_mall/UI/ImageChat/Pages/dalle_page.dart';
import 'package:dolphins_mall/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static AdRequest request =  AdRequest(nonPersonalizedAds: true);
  InterstitialAd? _interstitialAd;
  int _numInterstitialLoadAttempts = 0;
  int maxFailedLoadAttempts = 3;
  final pref = sl<IPrefsHelper>();
  final _HomeBloc = sl<HomePageBloc>();

  // Widget bannerAdWidget() {
  //   return StatefulBuilder(
  //     builder: (context, setState) => Container(
  //       child: AdWidget(ad: _bannerAd),
  //       width: _bannerAd.size.width.toDouble(),
  //       height: 100.0,
  //       alignment: Alignment.center,
  //     ),
  //   );
  // }

  final BannerAd myBanner = BannerAd(
    adUnitId: AdMobService.bannerAdUnitId ?? '',
    size: AdSize.fullBanner,
    request:  AdRequest(),
    listener:  BannerAdListener(),
  );

  void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdMobService.interstitialAdUnitId ?? '',
        request: request,
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            log('$ad loaded');
            _interstitialAd = ad;
            _numInterstitialLoadAttempts = 0;
            _interstitialAd!.setImmersiveMode(true);
          },

          onAdFailedToLoad: (LoadAdError error) {
            log('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            _interstitialAd = null;
            if (_numInterstitialLoadAttempts < maxFailedLoadAttempts) {
              _createInterstitialAd();
            }
          },
        ));
  }

  void _showInterstitialAd() {
    if (_interstitialAd == null) {
      log('Warning: attempt to show interstitial before loaded.');
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          log('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        log('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        log('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createInterstitialAd();
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }

  @override
  void initState() {
    super.initState();
    myBanner.load();
    _createInterstitialAd();
  }

  @override
  Widget build(BuildContext context){
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _HomeBloc,
        builder: (BuildContext context, HomePageState state)
        {
          return
            Scaffold(
              appBar: AppBar(
                title:  Text(
                  'dolphins_mall',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.white,
                elevation: 1,
                centerTitle: true,
              ),
              body: Container(
                width: w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // buttonWidget('Search By Images', () {
                    //   _showInterstitialAd();
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => DallePage(),
                    //     ),
                    //   );
                    // }),
                    buttonWidget(
                      'Start',
                          () {
                        _showInterstitialAd();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  ChatPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: Container(
                  alignment: Alignment.center,
                  width: w,
                  height: 100.h,
                  child: StatefulBuilder(
                    builder: (context, setState) => AdWidget(ad: myBanner),)
              ),
            );
        }
    );
  }


  Widget buttonWidget(String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100.h,
        width: 200.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.purple,
          border: Border.all(
            color: Colors.grey.shade400,
          ),
        ),

        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }

// Future<void> _launchUrl(Uri url) async {
//   if (!await launchUrl(
//     url,
//     mode: LaunchMode.externalApplication,
//   )) throw 'Could not launch $url';
// }
}
