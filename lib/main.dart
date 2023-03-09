import 'package:flutter/material.dart';
import 'package:gallery_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:gallery_app/Screen/Home/View/HomeScreen.dart';
import 'package:gallery_app/Screen/Image/View/imageScreen.dart';
import 'package:gallery_app/Screen/ImageView/View/ImageViewPage.dart';
import 'package:gallery_app/Screen/Profile/View/ProfilePage.dart';
import 'package:gallery_app/Screen/Video/View/VideoScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomePage(),
          'image': (context) => Images(),
          'profile': (context) => ProfilePage(),
          'video': (context) => Videos(),
          'imageview': (context) => ImageViewPage(),
        },
      ),
    ),
  );
}
