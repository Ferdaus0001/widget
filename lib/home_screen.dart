import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 22.w,
            vertical: 22.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Expanded(
              flex: 3,
              child: CircleAvatar(
                radius: 70.r,
                backgroundColor: Colors.green,
                child: Icon(Icons.person,size: 30.h,),
              ),
            ),
              Flexible(child: SizedBox(height: 30.h,)),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ) ,
              Flexible(child: SizedBox(height: 10.h,)),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
             Flexible(
               flex: 3,
                 child: SizedBox(height: 50.h,)),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50.h),
              // স্ক্রিনের 80% অংশ নিবে, যা যেকোনো ডিভাইসে রেসপনসিভ থাকবে
              padding: EdgeInsets.symmetric(vertical: 15.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.r),
              ),
            ),
          ),


              Flexible(
                flex: 4,
                  fit: FlexFit.tight,
                  child: SizedBox(height: 30.h,)),
              Expanded(
                flex: 4,

                child: Text('ffffffffffffffffffffffffffffffffffffffffff,'
                    'aaaaaaaaaaaaaaaaaaa,bbbbbbbbbbbb,'
                    '',style: TextStyle(fontWeight: FontWeight.bold,color:
                Colors.blueAccent,fontSize: 22.sp),),
              ),
              MaterialButton(
                color: Colors.red,
                  animationDuration: Duration(seconds: 1),
                  autofocus: true,
                  height: 50.h,
                  shape: CircleBorder(),
                  minWidth: 400,
                  onPressed: (){}),
            ],
          ),
        ),
    );
  }
}
