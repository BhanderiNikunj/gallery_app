import 'package:flutter/material.dart';
import 'package:gallery_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:provider/provider.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  HomeProvider? homeProvidertrue, homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 2,
          centerTitle: true,
          title: Text("Image"),
        ),
        body: GridView.builder(
          itemCount: homeProviderfalse!.image.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {

                  homeProviderfalse!.selectedIndex =index;
                  homeProviderfalse!.changeIndex();

                  Navigator.pushNamed(
                    context,
                    'imageview',
                    arguments: index,
                  );
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.black12,
                  child: Image.asset("${homeProviderfalse!.image[index]}"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
