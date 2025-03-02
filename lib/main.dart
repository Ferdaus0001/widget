import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projict_one/widget/presentation/screens/text_widget_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // যদি শুধুমাত্র ডিবাগ মোডে চালাতে চান, তাহলে `!kReleaseMode` ব্যবহার করুন
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // আপনার ডিজাইন অনুযায়ী এটি পরিবর্তন করুন
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            appBarTheme: AppBarTheme(
              color: Colors.blue,
              centerTitle: true,

            ),
            useMaterial3: true,
          ),
          home: TextWidgetScreen(),
          builder: DevicePreview.appBuilder, // Device Preview যোগ করা হলো
          locale: DevicePreview.locale(context), // ভাষা সাপোর্টের জন্য
        );
      },
    );
  }
}
