// import 'package:bubbles/App/app.dart';
// import 'package:bubbles/core/Classes/Classes.dart';
// import 'package:flutter/material.dart';
//
// class listViewHomeCards extends StatefulWidget {
//    listViewHomeCards({Key? key,required this.BUBBLElist,required this.Card}) : super(key: key);
//   List<BubbleData>? BUBBLElist;
//   Widget Card;
//   @override
//   State<listViewHomeCards> createState() => _listViewHomeCardsState();
// }
//
// class _listViewHomeCardsState extends State<listViewHomeCards> {
//   @override
//   Widget build(BuildContext context) {
//     TextTheme _TextTheme = Theme.of(context).textTheme;
//     ColorScheme ColorS = Theme.of(context).colorScheme;
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return Container(
//         width: w,
//         height:  h / 3.1,
//         child: ScrollConfiguration(
//             behavior: MyBehavior(),
//             child: ListView.separated(
//               cacheExtent : 500,
//               physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//               scrollDirection:
//               Axis.horizontal,
//               itemCount: widget.BUBBLElist!.length,
//               itemBuilder:(BuildContext context, int index) {
//                 return  widget.Card;
//               },
//               separatorBuilder: (BuildContext  context,  int index) {
//                 return  Text("      ");
//               },
//             )));
//   }
// }
