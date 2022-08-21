import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/screens/home.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:waste_not/auth/presentation/signup.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      //designSize: const Size(360, 720),
      minTextAdapt: true,

      splitScreenMode: true,
      builder: (context, a) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,

          home: SignupScreen(),
        );
      },
    );
  }
}
