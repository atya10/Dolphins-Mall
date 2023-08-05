import 'package:cached_network_image/cached_network_image.dart';
import 'package:dolphins_mall/UI/ImageChat/bloc/ImageChat_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Injection.dart';

import '../../full_screen.dart';
import '../bloc/ImageChat_bloc.dart';
import '../bloc/ImageChat_state.dart';

class DallePage extends StatefulWidget {
   DallePage({
    super.key,
  });

  @override
  State<DallePage> createState() => _DallePageState();
}

class _DallePageState extends State<DallePage> {

  final _ImageChat = sl<ImageChatbloc>();

  TextEditingController searchController = TextEditingController();
  bool imagesAvailable = false;
  bool searching = false;
  final double _value = 10;
  List<Images> imagesList = [];


  @override
  void initState() {
    _ImageChat.add(SignInApple ());

    super.initState();
    imagesAvailable = imagesList.isNotEmpty ? true : false;
  }

  @override
  Widget build(BuildContext context) {


    return BlocBuilder(
        bloc: _ImageChat,
        builder: (BuildContext context, ImageChatstate state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child:  Icon(
                  Icons.arrow_back_ios,
                  size: 22.w,
                  color: Colors.black,
                ),
              ),
              title:  Text(
                'Chat GPT',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            body: SafeArea(
              child: Container(
                margin:  EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 5.h,
                ),
                child: Column(
                  children: [
                    _formChat(),
                    Expanded(
                      child: imagesAvailable
                          ? MasonryGridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        itemCount: imagesList.length,
                        crossAxisSpacing: 10,
                        semanticChildCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                CustomPageRoute(
                                    builder: (context) =>
                                        Container()
                                ),
                              );
                            },
                            child: Hero(
                              tag: "",
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r)),
                                height: index % 2 == 0 ? 180 : 250,
                                width: MediaQuery.of(context).size.width / 3,
                                child: ImageCard(
                                  imageData: "",
                                ),
                              ),
                            ),
                          );
                        },
                      )
                          : Center(
                        child: searchingWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }


  Widget searchingWidget() {
    if (searching) {
      return  CircularProgressIndicator(
        color: Color(0xFF292B4D),
      );
    } else {
      return  Text(
        "Search for any image",
        style: TextStyle(color: Colors.white),
      );
    }
  }

  Widget _formChat() {
    return Container(
      padding:  EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: TextField(
        controller: searchController,
        style:  TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Type your message...',
          hintStyle:  TextStyle(color: Colors.grey),
          suffixIcon: InkWell(
            onTap: () async {
              setState(() {
                searching = true;
              });
              // imagesList = await submitGetImagesForm(
              //   context: context,
              //   prompt: searchController.text.toString(),
              //   n: _value.round(),
              // );
              setState(() {
                imagesAvailable = imagesList.isNotEmpty ? true : false;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color:  Color(0xFF292B4D),
              ),
              padding:  EdgeInsets.all(10.w),
              margin:  EdgeInsets.all(5.w),
              child:  Icon(
                Icons.search,
                color: Colors.white,
                size: 28.sp,
              ),
            ),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          labelStyle:  TextStyle(fontSize: 12.sp),
          contentPadding:  EdgeInsets.all(20.w),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}

class Images {
  String? url;
}

class ImageCard extends StatelessWidget {
   ImageCard({super.key, required this.imageData});

  final String imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: CachedNetworkImage(
        imageUrl: imageData,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
            height: 150.h,
            width: 150.w,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade100,
              highlightColor: Colors.white,
              child: Container(
                height: 220.h,
                width: 130.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r)),
              ),
            )),
      ),
    );
  }
}

class CustomPageRoute extends MaterialPageRoute {
  @override
  Duration get transitionDuration =>  Duration(milliseconds: 500);

  CustomPageRoute({builder}) : super(builder: builder);
}

Widget listLoader({context}){
  return SpinKitThreeBounce(
    color: Colors.green,
    size: 20.0,
  );
}
