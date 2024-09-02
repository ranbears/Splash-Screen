import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main.dart';

class SplashSCreen extends StatefulWidget {
  const SplashSCreen({super.key});

  @override
  State<SplashSCreen> createState() => _SplashSCreenState();
}

class _SplashSCreenState extends State<SplashSCreen>
      with SingleTickerProviderStateMixin{
      @override
      void initState() {
        super.initState();
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
        Future.delayed(const Duration(seconds: 5), () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
            builder: (_) => const MyApp()));
        });
      }

      @override
      void dispose() {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.white],
            begin: Alignment.topRight,
            end: Alignment.centerLeft),
        ),
        child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      'Splash Screen',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
   
  ],
),
      ),
    );
  }
}