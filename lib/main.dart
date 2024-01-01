import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasis_01/CounterApp.dart';
import 'package:kasis_01/grid_view.dart';
import 'package:kasis_01/youtube_video_player.dart';

import 'HomePage.dart';
import 'many_more.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarColor: Color.fromARGB(255, 46, 45, 45),
  //   ),
  // );
  runApp(MyApp());
}

MaterialApp MyApp() {
  return  MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.greenAccent,

    ),
    debugShowCheckedModeBanner: false,

    //botom navigation bar
    home: MyHomePage());
}


