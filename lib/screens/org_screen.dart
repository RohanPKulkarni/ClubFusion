import 'package:collaborate/login.dart';
import 'package:flutter/material.dart';
import 'package:collaborate/models/club.dart'; // Define Club class
import 'package:collaborate/screens/club_details_screen.dart';
import 'package:collaborate/club_coderit.dart';
import 'package:collaborate/course_info_screen.dart';

class orgScreen extends StatefulWidget {
  @override
  _orgScreenState createState() => _orgScreenState();
}

class _orgScreenState extends State<orgScreen> {
  List<Club> clubs = []; // Store club data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Clubs'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CourseInfoScreen1()));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text(
                  'Ramaiah Evolute',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: Colors.red,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CourseInfoScreen()));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text(
                  'Scolarships',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
