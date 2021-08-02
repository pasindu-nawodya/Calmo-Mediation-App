import 'package:flutter/material.dart';
import '../../constant.dart';

class CardView extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final Widget widget;
  const CardView({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
    required this.widget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
            Image.asset(image,width: 160.0,),
            Positioned(
              left: 140,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (widget)),
                  );
                },
                child :Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 136,
                  width: MediaQuery.of(context).size.width - 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Expanded(
                        child: Text(
                          text,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}