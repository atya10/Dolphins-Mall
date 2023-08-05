// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:form_field_validator/form_field_validator.dart';

class textfeild extends StatefulWidget {
  String Hint_Text;
 // final formkey1;
  final TextInputAction TextInputaction;
  final Function(String) Onchanged;
  final Function(String) Onsubmitted;
  final FocusNode FoucesNode;
  TextEditingController? Controller;
  String? Function(String?)?  validator;
  List<TextInputFormatter>? inputFormatters;
  final Margin;
  final Height;
  final weidth;
  double? FontSize;
  final Color FillColor;
  bool hidePass = false;
  int MaxLines = 0;
  double topContentPadding = 0;

  textfeild({
    required this.FillColor,
    required this.FontSize,
    required this.hidePass,
    required this.Margin,
    required this.weidth,
    required this.validator,
    required this.Controller,
    required this.Hint_Text,
    required this.Onchanged,
    required this.Onsubmitted,
    required this.TextInputaction,
    required this.FoucesNode,
     this.inputFormatters,
    this.Height,
    required this.MaxLines,
    required this.topContentPadding,
  });

  @override
  _State createState() => _State();
}

class _State extends State<textfeild> {

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TextTheme _TextTheme = Theme.of(context).textTheme;
    return Container(
      width: width / widget.weidth,
        height: height / widget.Height,

        margin: EdgeInsets.only(top: double.parse(widget.Margin.toString()).h  ),
        child: TextFormField(
          maxLines: widget.MaxLines,
            keyboardAppearance: Brightness.dark,
            textInputAction: widget.TextInputaction,
            controller: widget.Controller,
            cursorHeight: 20.h,
            onChanged: widget.Onchanged,
            onFieldSubmitted: widget.Onsubmitted,
            validator:widget.validator,
            cursorColor: Colors.black,
            inputFormatters: widget.inputFormatters,
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                height: 1.h,
                color: Colors.brown),
            decoration: InputDecoration(
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:  widget.FillColor, width: 0.0),
                    borderRadius: BorderRadius.circular(5.r)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: widget.FillColor, width: 0.0),
                    borderRadius: BorderRadius.circular(5.r)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                counterText: ' ',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.FillColor),
                    borderRadius: BorderRadius.circular(5.r)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.FillColor),
                    borderRadius: BorderRadius.circular(5.r)),
                filled: true,
                fillColor: widget.FillColor,
                contentPadding: EdgeInsets.only(left: 10.w, top: widget.topContentPadding.h),
                hintText: widget.Hint_Text,
                hintStyle: _TextTheme.headline6!.copyWith(
                  fontFamily: "Red Hat Text",
                  fontSize: widget.FontSize!.sp,
                )),
            keyboardType: TextInputType.text,
          obscureText: widget.hidePass,
          ),
        );
  }
}
