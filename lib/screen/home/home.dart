import 'package:Calmo/screen/about/about.dart';
import 'package:flutter/material.dart';
import 'package:Calmo/component/card/card.dart';
import 'package:Calmo/component/header/header.dart';
import 'package:Calmo/screen/audiopage/audiopage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child:  Scaffold(
        body:  Stack(
            children: [
              MyHeader(),
              SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 70.0,
                      ),
                      Center(
                        child: Text("Let's Relax Your Soul With", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Center(
                        child: Text("CALMO", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,),),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Image.asset("assets/images/homepic.png",width: 300.0,),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20),
                            CardView(
                              text:
                              "Meditation and concentration are the way to a life of serenity.\n-Baba Ram Dass",
                              image: "assets/images/medi.png",
                              title: "Let's Start Mediation ",
                              widget: AudioPage(),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CardView(
                              text:
                              "Click here if you have any Interest about the CALMO App.",
                              image: "assets/images/que.png",
                              title: "About Calm App",
                              widget: AboutPage(),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            ]
        ),
      )
    );
  }
}