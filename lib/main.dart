// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soft_design/tk_icons.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: NeumorphismUi()));
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey[900],
        statusBarColor: Colors.grey[900]),
  );
}

class NeumorphismUi extends StatefulWidget {
  const NeumorphismUi({Key? key}) : super(key: key);

  @override
  _NeumorphismUiState createState() => _NeumorphismUiState();
}

Color? mainColor = Colors.grey[900];
Color? secondColor = Colors.grey.shade800;

class _NeumorphismUiState extends State<NeumorphismUi> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(5, 5),
                              blurRadius: 15),
                          BoxShadow(
                              color: Colors.grey.shade800,
                              offset: Offset(-5, -5),
                              blurRadius: 15),
                        ]),
                    child: Icon(
                      Tk.menu,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'PLAYLIST',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(5, 5),
                              blurRadius: 15),
                          BoxShadow(
                              color: Colors.grey.shade800,
                              offset: Offset(-5, -5),
                              blurRadius: 15),
                        ]),
                    child: Icon(
                      Icons.more_horiz,
                      size: 40,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: width * 0.9,
                height: width * 1.1,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 15),
                    BoxShadow(
                        color: Colors.grey.shade800,
                        offset: Offset(-5, -5),
                        blurRadius: 15),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: width * 0.82,
                      height: width * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/musicPhoto.jpg',
                              ),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Miro & Fredy',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Sən Demə',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red[900],
                            size: 45,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2:31',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.shuffle,
                      color: Colors.white,
                      size: 26,
                    ),
                    Icon(
                      Icons.repeat,
                      color: Colors.white,
                      size: 26,
                    ),
                    Text(
                      '3:40',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                  width: width * 0.9,
                  height: 25,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(3, 3),
                            blurRadius: 12),
                        BoxShadow(
                            color: Colors.grey.shade800,
                            offset: Offset(-3, -3),
                            blurRadius: 12)
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Divider(
                          color: Colors.green,
                          thickness: 5,
                          indent: 15,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Divider(
                          color: Colors.grey.shade500,
                          thickness: 5,
                          endIndent: 15,
                        ),
                      )
                    ],
                  )),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        shape: BoxShape.circle,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.black,
                              offset: Offset(4, 4),
                              blurRadius: 10),
                          BoxShadow(
                              color: Colors.grey.shade800,
                              offset: const Offset(-4, -4),
                              blurRadius: 10),
                        ]),
                    child: const Icon(
                      CupertinoIcons.backward_end_fill,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.black,
                              offset: Offset(4, 4),
                              blurRadius: 10),
                          BoxShadow(
                              color: Colors.grey.shade800,
                              offset: const Offset(-4, -4),
                              blurRadius: 10),
                        ]),
                    child: const Icon(
                      CupertinoIcons.pause_fill,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        shape: BoxShape.circle,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.black,
                              offset: Offset(5, 5),
                              blurRadius: 10),
                          BoxShadow(
                              color: Colors.grey.shade800,
                              offset: const Offset(-4, -4),
                              blurRadius: 10),
                        ]),
                    child: const Icon(
                      CupertinoIcons.forward_end_fill,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
