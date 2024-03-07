import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 3.0),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amberAccent.shade100),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.asset('assets/images/user.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                            text: 'Kendel Jim',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '  @Kendel123',
                            style: TextStyle(
                                color: Colors.grey, fontSize: 11),
                          ),
                          TextSpan(
                            text: '\nLondon, UK . 1 min ago . 🌍',
                            style: TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                          TextSpan(
                            text: '\n🎵 Bad Liars - Imagine....',
                            style: TextStyle(
                                color: Colors.white70, fontSize: 11),
                          )
                        ]
                    )
                ),
              ),
              SizedBox(width: 70,),
              Icon(Icons.more_vert, size: 25, color: Colors.white,)
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 13.0, top: 10.0, bottom: 8.0),
          child: Text('Happy Weekend! ❤️',
            style: TextStyle(color: Colors.white,
                fontSize: 15),),
        ),
        Image.asset('assets/images/img.png',
          fit: BoxFit.cover,
          height: 260,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 13.0, left: 12.0, right: 12.0, bottom: 30.0),
          child: Row(
            children: [
              Icon(Icons.favorite, color: Colors.red,),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 7.0),
                child: Text('345', style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0, right: 6.0),
                child: Icon(Icons.messenger_outline, color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: Text('45', style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 6.0),
                child: Icon(Icons.save_alt, color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: Text('45', style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),),
              ),
              SizedBox(width: 100),
              Image.asset('assets/images/save.png',
                color: Colors.white,
                height: 25,
                width: 25,)
            ],
          ),
        )
      ],
    );
  }
}
