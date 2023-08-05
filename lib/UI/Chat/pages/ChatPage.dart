import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dolphins_mall/Data/prefs_helper/iprefs_helper.dart';
import 'package:dolphins_mall/Injection.dart';
import 'package:dolphins_mall/UI/Chat/bloc/Chat_bloc.dart';
import 'package:dolphins_mall/UI/Chat/bloc/Chat_event.dart';
import 'package:dolphins_mall/UI/Chat/bloc/Chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatPage extends StatefulWidget {
   ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}
class ChatComponents{
  String msg="";
  int is_me = 0;
}

class _ChatPageState extends State<ChatPage> {
  final pref = sl<IPrefsHelper>();
  final _ChatBloc = sl<ChatBloc>();
  String messagePrompt = '';
  int tokenValue = 500;
ScrollController controller = ScrollController();
  List<String> modelsList = [];
  late SharedPreferences prefs;
  @override
  void initState() {
    super.initState();

    //initPrefs();
  }


  // List<DropdownMenuItem<String>> get models {
  //   List<DropdownMenuItem<String>> menuItems =
  //       List.generate(modelsList.length, (i) {
  //     return DropdownMenuItem(
  //       value: modelsList[i].id,
  //       child: Text(modelsList[i].id),
  //     );
  //   });
  //   return menuItems;
  // }

  // void initPrefs() async {
  //   prefs = await SharedPreferences.getInstance();
  //   tokenValue = prefs.getInt("token") ?? 500;
  // }

  TextEditingController mesageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _ChatBloc,
        builder: (BuildContext context, ChatState state)
        {


          return Scaffold(
            backgroundColor:  Color(0xFF292B4D),
            body: SafeArea(
              child: Stack(
                children: [
                  Column(
                    children: [
                      _topChat(),
                      Expanded(
                        child: Container(
                          padding:  EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                          width: double.infinity,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45.r), topRight: Radius.circular(45.r)),
                            color: Colors.white,
                          ),
                          child: ListView.builder(
                            controller: controller,
                            physics:  BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: state.chatList!.length,
                            itemBuilder: (context, index) => _itemChat(
                              chat: state.chatList![index].is_me,
                              message:state.chatList![index].msg,
                            ),
                          )
                        ),
                      ),
                      SizedBox(
                        height: 89.h,
                      )
                    ],
                  ),
                  _formChat(),
                ],
              ),
            ),
          );
        }
    );
  }

  void saveData(int value) {
    prefs.setInt("token", value);
  }

  int getData() {
    return prefs.getInt("token") ?? 1;
  }


  _topChat() {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child:  Icon(
                  Icons.arrow_back_ios,
                  size: 25.w,
                  color: Colors.white,
                ),
              ),
               Text(
                'Chat GPT',
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          // GestureDetector(
          //   onTap: () {
          //     showModalBottomSheet<void>(
          //       context: context,
          //       backgroundColor: Colors.transparent,
          //       builder: (BuildContext context) {
          //         return StatefulBuilder(
          //             builder: (BuildContext context, StateSetter state) {
          //           return Container(
          //             height: 400,
          //             decoration:  BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(20),
          //                   topRight: Radius.circular(20),
          //                 )),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               mainAxisSize: MainAxisSize.min,
          //               children: <Widget>[
          //                  Padding(
          //                   padding: EdgeInsets.symmetric(vertical: 15.0),
          //                   child: Text(
          //                     'Settings',
          //                     style: TextStyle(
          //                       color: Color(0xFFF75555),
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ),
          //                 Divider(
          //                   color: Colors.grey.shade700,
          //                 ),
          //                 // Padding(
          //                 //   padding:  EdgeInsets.fromLTRB(20, 2, 20, 2),
          //                 //   child: DropdownButtonFormField(
          //                 //     items: models,
          //                 //     borderRadius:  BorderRadius.only(),
          //                 //     focusColor: Colors.amber,
          //                 //     onChanged: (String? s) {},
          //                 //     decoration:  InputDecoration(
          //                 //         hintText: "Select Model"),
          //                 //   ),
          //                 // ),
          //                  Padding(
          //                   padding: EdgeInsets.fromLTRB(20, 20, 20, 2),
          //                   child: Align(
          //                       alignment: Alignment.topLeft,
          //                       child: Text("Token")),
          //                 ),
          //                 Slider(
          //                   min: 0,
          //                   max: 1000,
          //                   activeColor:  Color(0xFFE58500),
          //                   inactiveColor:
          //                        Color.fromARGB(255, 230, 173, 92),
          //                   value: tokenValue.toDouble(),
          //                   onChanged: (value) {
          //                     state(() {
          //                       tokenValue = value.round();
          //                     });
          //                   },
          //                 ),
          //                 Padding(
          //                   padding:  EdgeInsets.symmetric(vertical: 10.0),
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: [
          //                       InkWell(
          //                         onTap: () {
          //                           Navigator.of(context).pop(false);
          //                         },
          //                         child: Container(
          //                           width:
          //                               MediaQuery.of(context).size.width / 2.2,
          //                           decoration: BoxDecoration(
          //                             color: Colors.grey.shade200,
          //                             borderRadius: BorderRadius.circular(40),
          //                           ),
          //                           padding:  EdgeInsets.symmetric(
          //                               vertical: 15, horizontal: 20),
          //                           child:  Center(
          //                             child: Text(
          //                               'Cancel',
          //                               style: TextStyle(
          //                                 color: Colors.black,
          //                                 fontWeight: FontWeight.bold,
          //                               ),
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                       InkWell(
          //                         onTap: () {
          //                           saveData(tokenValue);
          //                           Navigator.of(context).pop(false);
          //                         },
          //                         child: Container(
          //                           width:
          //                               MediaQuery.of(context).size.width / 2.2,
          //                           decoration: BoxDecoration(
          //                             color:  Color(0xFFE58500),
          //                             borderRadius: BorderRadius.circular(40),
          //                           ),
          //                           padding:  EdgeInsets.symmetric(
          //                               vertical: 15, horizontal: 20),
          //                           child:  Center(
          //                             child: Text(
          //                               'Save',
          //                               style: TextStyle(
          //                                 color: Colors.black,
          //                                 fontWeight: FontWeight.bold,
          //                               ),
          //                             ),
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           );
          //         });
          //       },
          //     );
          //   },
          //   child:  Icon(
          //     Icons.more_vert_rounded,
          //     size: 25,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }

  // Widget chats() {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     scrollDirection: Axis.vertical,
  //     itemCount: chatList.length,
  //     itemBuilder: (context, index) => _itemChat(
  //       chat: 0,
  //       message:"",
  //     ),
  //   );
  // }

  // Widget _bodyChat() {
  //   return Expanded(
  //     child: Container(
  //       padding:  EdgeInsets.only(left: 10, right: 10, top: 10),
  //       width: double.infinity,
  //       decoration:  BoxDecoration(
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(45), topRight: Radius.circular(45)),
  //         color: Colors.white,
  //       ),
  //       child: ListView(
  //         physics:  BouncingScrollPhysics(),
  //         children: [
  //           ListView.builder(
  //             shrinkWrap: true,
  //             scrollDirection: Axis.vertical,
  //             itemCount: chatList.length,
  //             itemBuilder: (context, index) => _itemChat(
  //               chat: 0,
  //               message:"",
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  _itemChat({required int chat, required String message}) {
    return InkWell(
      onLongPress: ()async{
        await Clipboard.setData(
            ClipboardData(
                text:message
            )
        );
        AnimatedSnackBar.material(
          'Copied Successfully',
          duration: Duration(seconds: 2),
          type: AnimatedSnackBarType
              .success,
        ).show(
          context,
        );
      },
      onTap: (){
        SystemChannels.textInput.invokeMethod('TextInput.hide');
        //remove keyboard on touching anywhere on the screen.
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Row(
        mainAxisAlignment:
            chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              margin:  EdgeInsets.only(
                left: 10.w,
                right: 10.w,
                top: 10.h,
              ),
              padding:  EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 10.w,
              ),
              decoration: BoxDecoration(
                color: chat == 0 ? Colors.indigo.shade100 : Colors.indigo.shade50,
                borderRadius: chat == 0
                    ?  BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                      )
                    :  BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
              ),
              child: chatWidget(message),
            ),
          ),
        ],
      ),
    );
  }

  Widget chatWidget(String text) {
    return


    SizedBox(
    width: 250.0.w,
    child: DefaultTextStyle(
    style:  TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    ),
    child: AnimatedTextKit(
    animatedTexts: [
    TyperAnimatedText(
    text.replaceFirst('\n\n', ''),
    ),
    ],
    repeatForever: false,
    totalRepeatCount: 1,
    onFinished: (){
    controller.animateTo(
    controller.position.maxScrollExtent,
    duration: Duration(milliseconds: 500),
    curve: Curves.easeIn,
    );
    },
    ),
    ),
    );
  }

  Widget _formChat() {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          color: Colors.white,
          child: TextField(
            controller: mesageController,
            decoration: InputDecoration(
              hintText: 'Type your message...',
              suffixIcon: InkWell(
                onTap:(()async{
                    controller.animateTo(
                      controller.position.maxScrollExtent,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.easeIn,
                                      );
                  _ChatBloc.add(SendMessage((b) => b
                    ..Msg= mesageController.text.toString()
                      ..Model = "XD"
                  ));
                  mesageController.clear();
                  // messagePrompt = mesageController.text.toString();
                  // setState(() {
                  //   chatList.add(Chat(msg: messagePrompt, chat: 0));
                  //   mesageController.clear();
                  // });
                  // chatList.addAll(await submitGetChatsForm(
                  //   context: context,
                  //   prompt: messagePrompt,
                  //   tokenValue: tokenValue,
                  // ));
                  // setState(() {});
                }),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color:  Color(0xFF292B4D)),
                  padding:  EdgeInsets.all(14),
                  child:  Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                    size: 28.w,
                  ),
                ),
              ),
              filled: true,
              fillColor: Colors.blueGrey.shade50,
              labelStyle:  TextStyle(fontSize: 12.sp),
              contentPadding:  EdgeInsets.all(20.w),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(25.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(25.r),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
