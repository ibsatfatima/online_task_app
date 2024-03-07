import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 8.0, top: 40, bottom: 10, right: 8.0),
      child: Row(
        children: [
          Image.asset('assets/images/appLogo.png',
            color: Colors.white,
            height: 80,
            width: 80,
          ),
          const SizedBox(width: 87),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add, color: Colors.white, size: 30),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.search, color: Colors.white, size: 30,),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.notifications_outlined, color: Colors.white, size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                height: 37,
                width: 37,
                child: Image.asset('assets/images/profile.png',
                  fit: BoxFit.cover,
                  // height: 50,
                  // width: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}