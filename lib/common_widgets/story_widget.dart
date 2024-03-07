import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 90,
                width: 95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    border: const GradientBoxBorder(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white, Colors.purpleAccent]),
                        width: 2.0
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 8.0, bottom: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      // border: Border.all(color: Colors.white54,
                      // width: 2),
                      boxShadow: const [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.white,
                          blurRadius: 10.0, // soften the shadow
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Image.asset('assets/images/user.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 3,
                left: 9,
                right: 9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.purple[300],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text('🎵 Live',
                        style: TextStyle(color: Colors.white)),
                  ),
                  // height: 20,
                  // width: 80,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7.0, bottom: 8.0),
            child: Text('CountryHenry',
              style: TextStyle(color: Colors.white, fontSize: 12),),
          )
        ],
      ),
    );
  }
}