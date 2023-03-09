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
  int a = 0;

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
              "${homeProvidertrue!.number + 1} / ${homeProviderfalse!.image.length}"),
        ),
        body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeProviderfalse!.image.length,
          controller: PageController(initialPage: homeProviderfalse!.number),
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 50,
              child: Image.asset("${homeProviderfalse!.image[index]}"),
            );
          },
          onPageChanged: (index) {
            homeProviderfalse!.numberOfPage(index);
          },
        ),
      ),
    );
  }
}
