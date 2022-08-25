import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:masrif/signInScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // English,
        Locale('ar', 'AE') // Arabic,
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      builder: (context, child) {
        return const Directionality(
          textDirection: TextDirection.rtl,
          child: myHome(),
        );
      },
    );
  }
}

// ignore: camel_case_types
class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  State<myHome> createState() => _myHomeState();
}

// ignore: camel_case_types
class _myHomeState extends State<myHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('images/NADC_LOGO.png',width: 200,height: 200,),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime(){
    var duration =const Duration(seconds: 3);
    return Timer(duration,signupRoute);
  }
  signupRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> const SignInScreen()));
  }
}
