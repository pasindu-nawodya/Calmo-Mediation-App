import 'package:Calmo/component/clipper/clipper.dart';
import 'package:Calmo/screen/home/home.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                      child: Text("About Calmo App", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Image.asset("assets/images/app.png",width: 500.0,),
                    SizedBox(
                      height: 50.0,
                    ),
                    Center(
                      child: Text("A mind can be weak depend on any situation we face on our lives. Due to any kind of problem or a pressure human mind can get weak. \n \nThis App will help you to free and concentrate on your mind. From the application the user will be able to be control or to be free from mental distress such as stress.", style: TextStyle(color: Colors.black, fontSize: 20,wordSpacing: 2.0),),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child:
                        FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Colors.indigo,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: Text(
                            "Rate For Calmo App",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child:
                        OutlineButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                          borderSide: BorderSide(color: Colors.indigo),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: Text(
                            "Go to Home Page",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.indigo,
                            ),
                          ),
                        )
                    ),
                    SizedBox(
                      height: 40.0,
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
