import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projict_one/home_screen.dart';
class TextWidgetScreen extends StatefulWidget {
  const TextWidgetScreen({super.key});

  @override
  State<TextWidgetScreen> createState() => _TextWidgetScreenState();
}

class _TextWidgetScreenState extends State<TextWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 11.w,vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('HI ferdasu ',style: TextStyle(fontSize: 22
                .sp,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontFamily: 'poppins',
              decoration: TextDecoration.overline,
              textBaseline: TextBaseline.alphabetic,
              // background: Paint(),
              height: 1,
              fontStyle: FontStyle.italic,
              inherit: true,
              debugLabel: 'error',
            decorationStyle: TextDecorationStyle.dotted,
             letterSpacing: 5,
              overflow: TextOverflow.clip,
              package: 'googleFont',
              wordSpacing: 24,

            ),))
          ],
        ),
      ),
    );
  }
}
