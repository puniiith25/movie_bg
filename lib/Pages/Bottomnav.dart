import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_bg/Pages/Booking.dart';
import 'package:movie_bg/Pages/Home.dart';
import 'package:movie_bg/Pages/Profile.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> Pages;
  late Home HomePage;
  late Booking BookingPage;
  late Profile ProfilePage;

  int currentabindex = 0;

  @override
  void initState() {
    HomePage = Home();
    BookingPage = Booking();
    ProfilePage = Profile();

    Pages = [HomePage, BookingPage, ProfilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black,
          color: Color.fromARGB(255, 204, 151, 7),
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentabindex = index;
            });
          },
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 30.0,
            ),
            Icon(Icons.book, color: Colors.white, size: 30.0),
            Icon(Icons.person, color: Colors.white, size: 30.0)
          ]),
      body: Pages[currentabindex],
    );
  }
}
