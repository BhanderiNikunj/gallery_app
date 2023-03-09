import 'package:flutter/material.dart';
import 'package:gallery_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:provider/provider.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  HomeProvider? homeProvidertrue, homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: homeProviderfalse!.image.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("${homeProviderfalse!.image[index]}"),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${homeProviderfalse!.Name[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "${homeProviderfalse!.Date[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.play_arrow),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
