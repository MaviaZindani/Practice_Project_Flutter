import 'package:flutter/material.dart';
import 'package:tution_app/widgets/profile_screen_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
               ClipPath(
                 child: Container(
                   height: 330.0,
                   color: Color.fromARGB(255, 0, 100, 250),
                 ),
                 clipper: Tringle(),
               ),
               ProfileBox(personName: 'mavia zindani', personsubtitle: 'Flutter developer'),
            ]
          ),
                       
                DetailBox(
                           number: '03350772255',
                           position: 'flutter developer',
                           email: 'maviazindaninfo@gmail.com',),
                          DetailOptionBox(detailOptionIcon: Icon(Icons.settings), detailOptionname: 'Setting'),
                          DetailOptionBox(detailOptionIcon: Icon(Icons.settings), detailOptionname: 'Setting'),
                          DetailOptionBox(detailOptionIcon: Icon(Icons.settings), detailOptionname: 'Setting'),
                          DetailOptionBox(detailOptionIcon: Icon(Icons.settings), detailOptionname: 'Setting'),
        ],
      ),
      
    );
  }
}