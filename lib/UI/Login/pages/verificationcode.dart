import 'package:dolphins_mall/UI/Login/pages/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> with SingleTickerProviderStateMixin{

  late TabController _tabController4;
  final smartAuth = SmartAuth();
  final pinputController = TextEditingController();

  // identifier Url
  final accountType = 'https://developers.google.com';
  // Value you want to save, phone number or email for example
  final credentialId = 'Credential Id';
  final credentialName = 'Credential Name';
  final profilePictureUri = 'https://profilePictureUri.com';

  @override
  void initState() {
    super.initState();
    getAppSignature();
    _tabController4 = TabController(vsync: this, length: 1);
  }

  @override
  void dispose() {
    smartAuth.removeSmsListener();
    pinputController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Container(
              margin: EdgeInsets.only(
                right: 144.w,
                left: 129.w,
                top: 59.h,
                bottom: 19.h,
              ),
              child: Text(
                'Dolphins Mall',
                style: TextStyle(
                  fontFamily: 'Montserrat-Arabic',
                  fontSize: 22.sp,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
                overflow: TextOverflow.visible,
              ),
            ),
            backgroundColor: const Color(0xffF4F4F4),
            bottom: TabBar(
              controller: _tabController4,
              //dividerColor:  const Color(0xffFA4F4D),
              indicatorWeight: 6.w,
              indicatorColor: const Color(0xffFA4F4D),
              indicatorPadding: EdgeInsets.only(right: 93.w, left: 94.w),

              //controller: _tabController,
              tabs: [
                Container(
                  alignment: Alignment.center,
                  child: Tab(

                    height: 43.h,
                    //  text: 'تسجيل الدخول',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          width: 96.w,
                          margin: EdgeInsets.only(
                            right: 139.w,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'نسيت كلمة المرور',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Arabic',
                              fontSize: 13.sp,
                              color: const Color(0xff454f63),
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              // margin: EdgeInsets.only(left: 20.w,),
                                width: 40.w,
                                height: 40.h,
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/image/arrow.png'
                                  ),)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController4,
            children: [
              screen3(),
            ],
          ),
        ),
      ),
    );
  }

  Container screen3() {
    return Container(
        margin: EdgeInsets.only(top: 26.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          right: 32.w, left: 241.w, bottom: 23.h),
                      alignment: Alignment.center,
                      child: Text(
                        'اضف الكود للمتابعة',
                        style: TextStyle(
                          fontFamily: 'Montserrat-Arabic',
                          fontSize: 12.sp,
                          color: const Color(0xff979797),
                          letterSpacing: 0.24.h,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: 43.w, left: 44.w, bottom: 33.h),
                      alignment: Alignment.center,
                        child: Pinput(
                          length:4,
                            controller: pinputController,
                            keyboardType: TextInputType.text,
                            //validator :,

                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 114.w,left: 101.w),
                     width: 160.w,
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: (){},
                        child: Row(
                          children: [
                            Text(
                              'لم يصلك الكود؟ ',
                              style: TextStyle(
                                fontFamily: 'Montserrat-Arabic',
                                fontSize: 12.sp,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28.w,
                              ),
                              //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                              overflow: TextOverflow.visible,
                            ),
                            Text(
                              'ارسل مرة اخرى',
                              style: TextStyle(
                                fontFamily: 'Montserrat-Arabic',
                                fontSize: 12.sp,
                                color: const Color(0xffFA4F4D),
                                letterSpacing: 0.28.w,
                              ),
                              //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                              overflow: TextOverflow.visible,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 216.h,right: 19.w,left: 20.w),
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: _x,
                        child: Container(
                          alignment: Alignment.center,
                          width: 336.w,
                          height: 52.h,
                          decoration: BoxDecoration(
                              color: const Color(0xffFA4F4D),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            'متابعة',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Arabic',
                              fontSize: 18.sp,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.36.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }

  void getAppSignature() async {
    final res = await smartAuth.getAppSignature();
    debugPrint('Signature: $res');
  }

  void userConsent() async {
    debugPrint('userConsent: ');
    final res = await smartAuth.getSmsCode(useUserConsentApi: true);
    userConsent();
    if (res.codeFound) {
      pinputController.setText(res.code!);
    } else {
      debugPrint('userConsent failed: $res');
    }
    debugPrint('userConsent: $res');
  }

  void smsRetriever() async {
    final res = await smartAuth.getSmsCode();
    smsRetriever();
    if (res.codeFound) {
      pinputController.setText(res.code!);
    } else {
      debugPrint('smsRetriever failed: $res');
    }
    debugPrint('smsRetriever: $res');
  }

  void requestHint() async {
    final res = await smartAuth.requestHint(
      isPhoneNumberIdentifierSupported: true,
      isEmailAddressIdentifierSupported: true,
      showCancelButton: true,
    );
    debugPrint('requestHint: $res');
  }

  void removeSmsListener() {
    smartAuth.removeSmsListener();
  }


  void saveCredential() async {
    final res = await smartAuth.saveCredential(
      id: credentialId,
      name: credentialName,
      accountType: accountType,
      profilePictureUri: profilePictureUri,
    );
    debugPrint('saveCredentials: $res');
  }

  void getCredential() async {
    final res = await smartAuth.getCredential(
      accountType: accountType,
      showResolveDialog: true,
    );
    debugPrint('getCredentials: $res');
  }

  void deleteCredential() async {
    final res = await smartAuth.deleteCredential(
      id: credentialId,
      accountType: accountType,
    );
    debugPrint('removeCredentials: $res');
  }


  _x() {
    atya(){

      WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>const NewPassword()),
      ));
    }

    if (true) {
      return atya();
    }

    /*
    if (!_formKey3.currentState!.validate()) {
      return ;
    }else
     */


  }
}

/*
localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
 */