import 'package:flutter/material.dart';
import 'package:gallery_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:provider/provider.dart';

class ImageViewPage extends StatefulWidget {
  const ImageViewPage({Key? key}) : super(key: key);

  @override
  State<ImageViewPage> createState() => _ImageViewPageState();
}

class _ImageViewPageState extends State<ImageViewPage> {
  HomeProvider? homeProviderfalse, homeProvidertrue;

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: homeProviderfalse!.image.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 50,
              color: Colors.purple,
              child: Image.asset("${homeProviderfalse!.image[index]}"),
            );
          },
        ),
      ),
    );
  }
}
