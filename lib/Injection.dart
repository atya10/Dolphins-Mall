// ignore_for_file: constant_identifier_names, file_names
import 'package:dolphins_mall/UI/Chat/bloc/Chat_bloc.dart';
import 'package:dio/dio.dart';

import 'package:dolphins_mall/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:dolphins_mall/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:dolphins_mall/UI/Login/bloc/Login_bloc.dart';
import 'package:dolphins_mall/UI/loginscreen2/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';
import 'Data/http_helper/Ihttp_helper.dart';
import 'Data/http_helper/http_helper.dart';
import 'Data/prefs_helper/iprefs_helper.dart';
import 'Data/prefs_helper/prefs_helper.dart';
import 'Data/repository/irepository.dart';
import 'Data/repository/repository.dart';
import 'UI/ImageChat/bloc/ImageChat_bloc.dart';


final sl = GetIt.instance;


const BaseUrl = "https://saedyounis.com/api/";


Future iniGetIt() async {
  sl.registerLazySingleton(() => Dio(
      BaseOptions(baseUrl: BaseUrl, headers: {

      }, responseType: ResponseType.plain)

  ));

//DATA
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());

  //factory means this dependency injection will provide us with new instance of get it everytime its called
  //so sometimes we call bloc in dispose which leads stream to close so useing the same instance that means it will be closed.

 sl.registerFactory(() => ChatBloc(sl()));
 sl.registerFactory(() => LoginBloc(sl()));
// sl.registerFactory(() => SignUpBloc(sl()));
// sl.registerFactory(() => SliderBloc(sl()));
 sl.registerFactory(() => HomePageBloc(sl()));
 // sl.registerFactory(() => HomePageBloc(sl()));
 sl.registerFactory(() => ImageChatbloc(sl()));

 //sl.registerFactory(() => loginBloc(sl()));

 
}
//we use this package for dependency injection and use for connecting all our APP with each other
//for example we give in constructor this get_it in both http and repository so the object can come IN the Easy Way.

