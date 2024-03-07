import 'package:flutter/material.dart';
import '../common_widgets/app_bar_widget.dart';
import '../common_widgets/my_story_widget.dart';
import '../common_widgets/post_widget.dart';
import '../common_widgets/story_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
     body: Column(
       children: [
         // App Bar
         const AppBarWidget(),

         // Second Listview
         SizedBox(
           height: 140,
           child: ListView.builder(
               shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               itemCount: 10,
               itemBuilder: (context, index) {
                 return index == 0 ? const MyStoryWidget() :
                 const StoryWidget();
               } ),
         ),

         // Third TabBar
         Expanded(
           child: DefaultTabController(
             length: 6,
             child: Column(
               children: [
                 TabBar(
                   indicatorWeight: 1.0,
                   unselectedLabelColor: Colors.grey,
                     isScrollable: true,
                     labelColor: Colors.black,
                     indicator: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0), // Creates border
                         color: Colors.amberAccent.shade100),
                     tabs: const [
                       Tab(
                         child: Text('ALL',
                           style: TextStyle(fontSize: 12),
                         ),
                       ),

                       Tab(
                         child: Text('PHOTOS',
                           style: TextStyle(fontSize: 12),
                         ),
                       ),

                       Tab(
                         child: Text('ROOMS',
                           style: TextStyle(fontSize: 12),
                         ),
                       ),

                       Tab(
                         child: Text('MUSIC',
                           style: TextStyle(fontSize: 12),
                         ),
                       ),

                       Tab(
                         child: Text('JOBS',
                           style: TextStyle(fontSize: 12),
                         ),
                       ),

                       Tab(
                         child: Text('SHORTS',
                           style: TextStyle(fontSize: 12),
                         ),
                       ),
                     ]
                 ),

                 // Tab Bar View
                 Expanded(
                   child: TabBarView(
                     children: [
                       // Second Listview
                       SizedBox(
                         height: 300,
                         child: ListView.builder(
                             shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                             itemCount: 3,
                             itemBuilder: (context, index) {
                               return const PostWidget();
                             } ),
                       ),
                       SizedBox(
                         height: 300,
                         child: ListView.builder(
                             shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                             itemCount: 3,
                             itemBuilder: (context, index) {
                               return const PostWidget();
                             } ),
                       ),
                       SizedBox(
                         height: 300,
                         child: ListView.builder(
                             shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                             itemCount: 3,
                             itemBuilder: (context, index) {
                               return const PostWidget();
                             } ),
                       ),
                       SizedBox(
                         height: 300,
                         child: ListView.builder(
                             shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                             itemCount: 3,
                             itemBuilder: (context, index) {
                               return const PostWidget();
                             } ),
                       ),
                       SizedBox(
                         height: 300,
                         child: ListView.builder(
                             shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                             itemCount: 3,
                             itemBuilder: (context, index) {
                               return const PostWidget();
                             } ),
                       ),
                       SizedBox(
                         height: 300,
                         child: ListView.builder(
                             shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                             itemCount: 3,
                             itemBuilder: (context, index) {
                               return const PostWidget();
                             } ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
    );
  }
}




