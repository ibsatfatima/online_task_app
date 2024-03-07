import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MyStoryWidget extends StatelessWidget {
  const MyStoryWidget({
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
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(13.0),
                color: Colors.amber.shade200,
                strokeWidth: 1,
                dashPattern: const [6, 6, 6, 9],
                child: SizedBox(
                  height: 85,
                  width: 90,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 3.0, right: 3.0, top: 3.0, bottom: 3.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.asset('assets/images/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                // left: 9,
                right: 0,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.amber.shade200,
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: const Icon(Icons.add, size: 26,),
                    )
                  // height: 20,
                  // width: 80,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7.0, bottom: 9.0),
            child: Text('Your Story',
              style: TextStyle(color: Colors.grey, fontSize: 12),),
          )
        ],
      ),
    );
  }
}