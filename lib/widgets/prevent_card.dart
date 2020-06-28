import 'package:covid_19yt/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  
  const PreventCard({
    Key key, 
    this.image, 
    this.title, 
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget> [
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [ 
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor
                  ) 
                ]
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 140,
              child: Container(
                height: 136,
                width: MediaQuery.of(context).size.width - 160,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                // color: Colors.purple[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: kTitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 12
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset('assets/icons/forward.svg')
                    )
                  ],
                ),
              ) 
            )
          ],
        ),
      ),
    );
  }
}
