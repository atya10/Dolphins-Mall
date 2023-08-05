import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackTextButton extends StatefulWidget {
   BackTextButton({Key? key,required this.cntx}) : super(key: key);
BuildContext cntx;
  @override
  State<BackTextButton> createState() => _BackTextButtonState();
}

class _BackTextButtonState extends State<BackTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        WidgetsBinding.instance
            .addPostFrameCallback((_) {
          Navigator.pop(widget.cntx);
        });
      },
      child: Container(
        child: Text('< Back',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Red Hat Text',
              fontSize: 20.sp,
              letterSpacing: 0,
              fontWeight: FontWeight.w300,
              height: 1.h
          ),
        ),
      ),
    );
  }
}
