
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dolphins_mall/Data/repository/irepository.dart';
import 'ImageChat_event.dart';
import 'ImageChat_state.dart';


class ImageChatbloc extends Bloc<ImageChatevent,ImageChatstate> {

  IRepository _repository;

  ImageChatbloc(this._repository) : super(ImageChatstate.initail()) ;

  @override
  ImageChatstate get initialState => ImageChatstate.initail();

  @override
  Stream<ImageChatstate> mapEventToState(
      ImageChatevent event,
      ) async* {

//
//     if (event is SignInApple) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//     //    final date = await _repository.AppleSignIN(event.Email!, event.FirstName!, event.Lastname!, event.fcmToken!);
//         print(date);
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//
//     if (event is ClearError) {
//       yield state.rebuild((b) => b
//         ..error = ""
//       );
//     }
//
//     if (event is PostLOgin) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
// // print("im here");
// // print(event.Email!);
// // print(event.fcmToken!);
// // print(event.password!);
//       //  final date = await _repository.login(event.Email!, event.password!,event.fcmToken!);
// print(date);
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//     if (event is LoginWithPhone) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//    //     final date = await _repository.SignInWithPhone(event.Phone!, event.fcmToken!);
//
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//
//     if (event is LoginSocial) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//     //    final date = await _repository.LoginSocial(event.Token!,event.fcmToken!);
// print(date);
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//
//     if (event is LoginGoogle) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//         final date = await _repository.GoogleLogin(event.Email!,event.name!, event.fcmToken!,event.avatar!);
//         print(date);
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//     if (event is ChangeIconStatus) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..ShowPass_IconStatus = !state.ShowPass_IconStatus!
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//
//         );
//       }
//     }
//     if (event is ChangeCheckBoxStatus) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..CheckboxStatus = !state.CheckboxStatus!
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//
//         );
//       }
//     }


  }
}
