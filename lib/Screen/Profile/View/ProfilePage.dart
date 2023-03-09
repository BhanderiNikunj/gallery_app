import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Profile"),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 2,
        ),
        backgroundColor: Colors.purple.shade500,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                    topRight: Radius.circular(150),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.purple,
                            border: Border.all(color: Colors.white),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Follow",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        SizedBox(width: 20 ,),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white10,
                            border: Border.all(color: Colors.purple),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Massage",
                            style:
                            TextStyle(color: Colors.purple, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "------------------------------------------------------",
                      style: TextStyle(letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.person,
                          size: 20,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Nikunj Bhanderi",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "------------------------------------------------------",
                      style: TextStyle(letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.date_range,
                          size: 20,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "28/06/2006",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "------------------------------------------------------",
                      style: TextStyle(letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.call,
                          size: 20,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "+91 6352431889",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "------------------------------------------------------",
                      style: TextStyle(letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.mail,
                          size: 20,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "nikunjbhanderi135@gmail.com",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "------------------------------------------------------",
                      style: TextStyle(letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 85,top: 20),
              child: CircleAvatar(
                radius: 100,
                backgroundImage:
                AssetImage("Assets/Images/my_image/my (2).png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
