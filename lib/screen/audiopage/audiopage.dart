import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:Calmo/component/clipper/clipper.dart';
import 'package:Calmo/screen/home/home.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {

  final assetsAudioPlayer = AssetsAudioPlayer.withId("0");
  bool ispresed = false;
  bool _play = false;
  @override
  void dispose() {
    super.dispose();
    assetsAudioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: () {
        return new Future(() => true);
      },
      child: Scaffold(
        body: Stack(
          children: [
            ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: Colors.indigo,
                )
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 80.0,
                    ),
                    Center(
                      child: Text("Let's Relax Your Soul", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text("Follow the given instruction before start the Mediation. It will help you to do this programme more efficient way.", style: TextStyle(color: Colors.white, fontSize: 20,),),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.asset("assets/images/medi.png",width: 300.0,),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Text("• Make sure you are in quite area.", style: TextStyle(color: Colors.black, fontSize: 20,),),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Text("• Arrange a seat.", style: TextStyle(color: Colors.black, fontSize: 20,),),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Text("• Check comfortability.", style: TextStyle(color: Colors.black, fontSize: 20,),),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Text("• Take a deep breath", style: TextStyle(color: Colors.black, fontSize: 20,),),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Text("• Well done, Let's Start.", style: TextStyle(color: Colors.black, fontSize: 20,),),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Text("• Press play button and close your eyes.", style: TextStyle(color: Colors.black, fontSize: 20,),),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    AudioWidget.assets(
                      path: "assets/mp3/music.mp3",
                      play: _play,
                      child:
                      Center(
                        child: Ink(
                          height: 90.0,
                          width: 90.0,
                          decoration: const ShapeDecoration(
                            color: Colors.indigo,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(_play ? Icons.pause_circle_outline_rounded : Icons.play_arrow_rounded,size: 75.0,),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                _play = !_play;
                              });
                            },
                          ),
                        ),
                      ),
                      onReadyToPlay: (duration) {
                        //onReadyToPlay
                      },
                      onPositionChanged: (current, duration) {
                        //onPositionChanged
                      },
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
