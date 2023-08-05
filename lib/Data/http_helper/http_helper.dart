import 'dart:convert';
import 'dart:developer';


import 'package:built_value/serializer.dart';


import 'package:dolphins_mall/models/UserdataModel/UserData.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:built_collection/built_collection.dart';

import 'Ihttp_helper.dart';
import 'dart:io';
import 'dart:core';

class HttpHelper implements IHttpHelper {
  Dio? _dio;
  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
    _dio!.interceptors.add(CookieManager(cookieJar));
  }

  @override
  Future<UserData> login(
      String email,
      String password,
      String FCMTocken
      )async{
    try {
      var formdata = {
        "email":email,
        "password":password,
        "fcm_token":FCMTocken,
      };
      final response = await _dio!
          .post(
        "/login"
          , data: formdata,options: Options(headers: {

      }));


      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserData,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserData),
                  ],
                ),
              ],
            )) as UserData;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }


 // final res = await networkClient.get(
//       "${BASE_URL}models",
//       token: OPEN_API_KEY,
//     );
  ///
// Future<List<Chat>> submitGetChatsForm({
//   required BuildContext context,
//   required String prompt,
//   required int tokenValue,
//   String? model,
// }) async {
//   //
//   NetworkClient networkClient = NetworkClient();
//   List<Chat> chatList = [];
//   try {
//     final res = await networkClient.post(
//       "${BASE_URL}completions",
//       {
//         "model": model ?? "text-davinci-003",
//         "prompt": prompt,
//         "temperature": 0,
//         "max_tokens": tokenValue
//       },
//       token: OPEN_API_KEY,
//     );

// Future<List<Images>> submitGetImagesForm({
//   required BuildContext context,
//   required String prompt,
//   required int n,
// }) async {
//   //
//   NetworkClient networkClient = NetworkClient();
//   List<Images> imagesList = [];
//   try {
//     final res = await networkClient.post(
//       '${BASE_URL}images/generations',
//       {"prompt": prompt, "n": n, "size": "256x256"},
//       token: OPEN_API_KEY,
//     );




///
  // @override
  // Future<AddVolModel> AddVol(
  //     String gender,
  //     String uni_sp,
  //     String area,
  //     String street,
  //     String phone,
  //     String email,
  //     String note,
  //     String full_name,
  //     String old,
  //     String noid,
  //     )async{
  //   try {
  //     final formData = {
  //       "gender": gender,
  //       "uni_sp": uni_sp,
  //       "area": area,
  //       "street": street,
  //       "phone": phone,
  //       "email": email,
  //       "note": note,
  //       "full_name": full_name,
  //       "old": old,
  //       "noid": noid,
  //     };
  //     final response = await _dio!
  //         .post('add_vol', data:formData, options: Options(headers: {
  //       "Accept" :"application/json"
  //     }));
  //
  //     if (response.statusCode == 200){
  //
  //       final baseResponse = serializers.deserialize(json.decode(response.data),
  //           specifiedType: const FullType(
  //             AddVolModel,
  //             [
  //               FullType(
  //                 BuiltList,
  //                 [
  //                   FullType(AddVolModel),
  //                 ],
  //               ),
  //             ],
  //           )) as AddVolModel;
  //
  //       return baseResponse;
  //     }else{
  //       throw NetworkException();
  //     }
  //   } on SocketException catch (e) {
  //     throw NetworkException();
  //   } catch (e) {
  //     throw NetworkException();
  //   }
  // }

}
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:logger/logger.dart';
//
// import '../errors/exceptions.dart';
// import '../models/chat.dart';
// import '../models/images.dart';
// import '../models/model.dart';
//
// import '../utils/constants.dart';
// import 'error_message.dart';
// import 'network_client.dart';
//
// Future<List<Images>> submitGetImagesForm({
//   required BuildContext context,
//   required String prompt,
//   required int n,
// }) async {
//   //
//   NetworkClient networkClient = NetworkClient();
//   List<Images> imagesList = [];
//   try {
//     final res = await networkClient.post(
//       '${BASE_URL}images/generations',
//       {"prompt": prompt, "n": n, "size": "256x256"},
//       token: OPEN_API_KEY,
//     );
//     Map<String, dynamic> mp = jsonDecode(res.toString());
//     debugPrint(mp.toString());
//     if (mp['data'].length > 0) {
//       imagesList = List.generate(mp['data'].length, (i) {
//         return Images.fromJson(<String, dynamic>{
//           'url': mp['data'][i]['url'],
//         });
//       });
//       debugPrint(imagesList.toString());
//     }
//   } on RemoteException catch (e) {
//     Logger().e(e.dioError);
//     errorMessage(context);
//   }
//   return imagesList;
// }
//
// Future<List<Chat>> submitGetChatsForm({
//   required BuildContext context,
//   required String prompt,
//   required int tokenValue,
//   String? model,
// }) async {
//   //
//   NetworkClient networkClient = NetworkClient();
//   List<Chat> chatList = [];
//   try {
//     final res = await networkClient.post(
//       "${BASE_URL}completions",
//       {
//         "model": model ?? "text-davinci-003",
//         "prompt": prompt,
//         "temperature": 0,
//         "max_tokens": tokenValue
//       },
//       token: OPEN_API_KEY,
//     );
//     Map<String, dynamic> mp = jsonDecode(res.toString());
//     debugPrint(mp.toString());
//     if (mp['choices'].length > 0) {
//       chatList = List.generate(mp['choices'].length, (i) {
//         return Chat.fromJson(<String, dynamic>{
//           'msg': mp['choices'][i]['text'],
//           'chat': 1,
//         });
//       });
//       debugPrint(chatList.toString());
//     }
//   } on RemoteException catch (e) {
//     Logger().e(e.dioError);
//     errorMessage(context);
//   }
//   return chatList;
// }
///
// Future<List<Model>> submitGetModelsForm({
//   required BuildContext context,
// }) async {
//   //
//   NetworkClient networkClient = NetworkClient();
//   List<Model> modelsList = [];
//   try {
//     final res = await networkClient.get(
//       "${BASE_URL}models",
//       token: OPEN_API_KEY,
//     );
//     Map<String, dynamic> mp = jsonDecode(res.toString());
//     debugPrint(mp.toString());
//     if (mp['data'].length > 0) {
//       modelsList = List.generate(mp['data'].length, (i) {
//         return Model.fromJson(<String, dynamic>{
//           'id': mp['data'][i]['id'],
//           'created': mp['data'][i]['created'],
//           'root': mp['data'][i]['root'],
//         });
//       });
//       debugPrint(modelsList.toString());
//     }
//   } on RemoteException catch (e) {
//     Logger().e(e.dioError);
//     errorMessage(context);
//   }
//   return modelsList;
// }
///
// import 'package:flutter/material.dart';
//
// void errorMessage(BuildContext context) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     const SnackBar(
//       content: Text("Something went wrong. please try again later"),
//       backgroundColor: Colors.lightBlue,
//     ),
//   );
//   Navigator.pop(context);
// }
// import 'package:dio/dio.dart';
//
// import '../errors/exceptions.dart';
//
// class NetworkClient {
//   Dio _dio = Dio();
//   NetworkClient({String? baseUrl}) {
//     baseUrl ??= "";
//     BaseOptions baseOptions = BaseOptions(
//       // receiveTimeout: 20000,
//       // connectTimeout: 30000,
//       baseUrl: baseUrl,
//       maxRedirects: 2,
//     );
//     _dio = Dio(baseOptions);
//     // adding logging interceptor.
//     _dio.interceptors.add(LogInterceptor(
//       requestBody: false,
//       error: true,
//       request: false,
//       requestHeader: false,
//       responseBody: true,
//       responseHeader: false,
//     ));
//   }
//
//   // for HTTP.GET Request.
//   Future<Response> get(String url,
//       {Map<String, dynamic>? params, String? token}) async {
//     Response response;
//     try {
//       Map<String, dynamic> map = {"Accept": "application/json"};
//       if (token != null) map.addAll({"Authorization": "Bearer $token"});
//
//       response = await _dio.get(url,
//           queryParameters: params,
//           options: Options(
//             headers: map,
//           ));
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for HTTP.POST Request.
//   Future<Response> post(String url, Map<String, dynamic> params,
//       {String? token}) async {
//     Response response;
//     try {
//       Map<String, dynamic> map = {"Accept": "application/json"};
//       if (token != null) {
//         map.addAll({"Authorization": "Bearer $token"});
//       }
//       response = await _dio.post(url,
//           data: params,
//           options: Options(
//             headers: map,
//             responseType: ResponseType.json,
//             validateStatus: (_) => true,
//           ));
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for HTTP.POST Request.
//   Future<Response> put(String url, Map<String, dynamic> params,
//       {String? token}) async {
//     Response response;
//     try {
//       Map<String, dynamic> map = {"Accept": "application/json"};
//       if (token != null) {
//         map.addAll({"Authorization": "Bearer $token"});
//       }
//       response = await _dio.put(url,
//           data: params,
//           options: Options(
//             headers: map,
//             responseType: ResponseType.json,
//             validateStatus: (_) => true,
//           ));
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for HTTP.PATCH Request.
//   Future<Response> patch(String url, Map<String, Object> params) async {
//     Response response;
//     try {
//       response = await _dio.patch(url,
//           data: params,
//           options: Options(
//             responseType: ResponseType.json,
//           ));
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for download Request.
//   Future<Response> download(String url, String pathName,
//       void Function(int, int)? onReceiveProgress) async {
//     Response response;
//     try {
//       response = await _dio.download(
//         url,
//         pathName,
//         onReceiveProgress: onReceiveProgress,
//       );
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for fileUpload Request.
//   Future<Response> fileUpload(String url, FormData params) async {
//     Response response;
//     try {
//       response = await _dio.post(url,
//           data: params,
//           options: Options(
//             responseType: ResponseType.json,
//           ));
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
// }
///
//import 'dart:io' show Platform;
// import 'package:dolphins_mall/Core/constants/strings.dart';
//
//
// class AdMobService {
//   static String? get bannerAdUnitId {
//     if (Platform.isAndroid) {
//       return ANDROID_BANNER_ADD_ID;
//     } else if (Platform.isIOS) {
//       return "";
//     }
//     return null;
//   }
//
//   static String? get interstitialAdUnitId {
//     if (Platform.isAndroid) {
//       return ANDROID_INTERSTITIAL_ADD_ID;
//     } else if (Platform.isIOS) {
//       return "";
//     }
//     return null;
//   }
//
// }
class NetworkException implements Exception {}
