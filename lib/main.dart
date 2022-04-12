import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Stack(
                      overflow: Overflow.visible,
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                new Text(
                                  "Alert Dialog",
                                  style: TextStyle(
                                    fontFamily: "Segoe UI",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 23,
                                    color: Color(0xff070707),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                new Text(
                                  "This is an alert dialog. alert dialog is very useful and  easy to use.This is an alert dialog. alert dialog is very useful and  easy to use.",
                                  style: TextStyle(
                                    fontFamily: "Segoe UI",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff070707),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: -50,
                            child: CircleAvatar(
                              radius: 50,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  child: Image.asset("images/new.jpg")),
                            ))
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
