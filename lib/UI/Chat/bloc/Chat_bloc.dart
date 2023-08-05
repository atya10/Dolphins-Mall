
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dolphins_mall/Data/repository/irepository.dart';
import 'package:dolphins_mall/UI/Chat/pages/ChatPage.dart';
import 'Chat_event.dart';
import 'Chat_state.dart';


class ChatBloc extends Bloc<ChatEvent, ChatState> {

  IRepository _repository;

  ChatBloc(this._repository) : super(ChatState.initail()) ;

  @override
  ChatState get initialState => ChatState.initail();

  @override
  Stream<ChatState> mapEventToState(
      ChatEvent event,
      ) async* {


    if (event is SendMessage) {
      try {

        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
        ..data = null
        );
        ChatComponents componentss = ChatComponents();
        componentss.msg = event.Msg!;
        componentss.is_me = 0;
        state.chatList!.add(componentss);

      // final date = await _repository.SendMessageTodolphins_mall(event.Msg!,event.Model!,20);
      // print(date);



        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
          //..data.replace(date)
        );

        ChatComponents componentss2 = ChatComponents();
        componentss2.msg = state.data!.choices![0].message!.content!;
        componentss2.is_me = 1;
        state.chatList!.add(componentss2);


      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
       ..data = null
        );
      }
    }
    if (event is SetChatComponents) {
      try {

        ChatComponents componentss = ChatComponents();
        componentss.msg = event.Msg!;
        componentss.is_me = 1;
        state.chatList!.add(componentss);

      } catch (e) {
        print('get Error $e');

      }
    }

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
