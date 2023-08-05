// // ignore_for_file: file_names
//
//
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:thementr/Data/repository/irepository.dart';
//
// import 'SignUp_event.dart';
// import 'SignUp_state.dart';
//
//
// class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
//
//   IRepository _repository;
//
//   SignUpBloc(this._repository) : super(SignUpState.initail());
//
//   @override
//   SignUpState get initialState => SignUpState.initail();
//
//   @override
//   Stream<SignUpState> mapEventToState(SignUpEvent event,) async* {
//
//
//     if (event is PostSignUp) {
//       try {
//         yield state.rebuild((b) =>
//         b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//         );
//
//         // final date = await _repository.SignUp(
//         //   event.Email!,
//         //   event.password!,
//         //   event.fcmToken!,
//         //   event.first_name!,
//         //   event.last_name!,
//         //   event.Genter!,
//         //   event.background_color!,
//         //   event.bio!,
//         //   event.birth_date!,
//         //   event.interests!,
//         //   event.avatarID!,
//         //   event.alias!,
//         //   ""
//         // );
//         // print('get Success data ${date}');
//         // yield state.rebuild((b) =>
//         // b
//         //   ..isLoading = false
//         //   ..error = ""
//         //   ..success = true
//         //   ..data.replace(date)
//         //
//         // );
//       } catch (e) {
//         print('get Error $e');
//         // yield state.rebuild((b) =>
//         // b
//         //   ..isLoading = false
//         //   ..error = "Something went wrong"
//         //   ..success = false
//         //   ..data = null
//         // );
//       }
//     }
//     if (event is ChangeRoleValue) {
//       try {
//         yield state.rebuild((b) =>
//         b
//           ..SelectedRoleValue = event.value!
//         );
//
//       } catch (e) {
//         print('get Error $e');
//       }
//     }
//     if (event is ChangeInterestValue) {
//       try {
//         yield state.rebuild((b) =>
//         b
//           ..SelectedInterestValue = event.value!
//         );
//
//       } catch (e) {
//         print('get Error $e');
//       }
//     }
//     if (event is SelectItemInList) {
//       try {
//         yield state.rebuild((b) =>
//         b..isLoading = true
//           ..SelectedListItems![event.Index!] = !state.SelectedListItems![event.Index!]
//         );
//         yield state.rebuild((b) =>
//         b..isLoading = false
//         );
//
//       } catch (e) {
//         print('get Error $e');
//       }
//     }
//     if (event is ChangeCharLength) {
//       try {
//         yield state.rebuild((b) =>
//         b
//           ..CharLength = event.value!
//         );
//
//       } catch (e) {
//         print('get Error $e');
//       }
//     }
//
//
//   }
// }
