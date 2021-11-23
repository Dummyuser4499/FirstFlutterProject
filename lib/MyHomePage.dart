import 'package:demo/SplashScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(home: SplashScreen());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            home: Scaffold(
              body: Center(
                  child: Container(
                    child: Text(
                      'Loaded',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )),
            ),
          );
        }
      },
    );
  }
}

