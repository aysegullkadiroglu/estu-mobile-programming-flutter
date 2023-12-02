import 'package:bim493_project/pages/auth/forgotPassword.dart';
import 'package:bim493_project/pages/auth/loginPage.dart';
import 'package:bim493_project/pages/deneme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bim493_project/pages/auth/signUp.dart';
import 'package:bim493_project/utils/customColors.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Varsa Paran',
      routes: {
        "/loginPage": (context) => LoginPage(),
        "/signUp": (context) => SignUp(),
        "/forgotPassword": (context) => ForgotPassword(),
        "/fluidNavBarDemo": (context) => FluidNavBarDemo(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: customColors.scaffoldBackgroundColor,
      ),
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
