import 'package:flutter/material.dart';
import 'package:tution_app/widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  List days = ['mon','tus','wed','thus','fri','sat','sun'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context,index){
                  return Container(
                    width: 71.2,
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(days[index]),
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                        )
                      ],
                    ),
                  );
                },),
            ),
          ),
            ListView.builder(

            itemBuilder: (context,index){
              return ScreenWidgets();
            })
        ],
      )
      );
  }
}
