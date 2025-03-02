import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_riga/components/bottom_nav_bar_student.dart';

import '../../components/header_home_page.dart';
import '../../components/stand_card.dart';

class HomePageStudent extends StatefulWidget {
  const HomePageStudent({super.key});

  @override
  State<HomePageStudent> createState() => _HomePageStudentState();
}

class _HomePageStudentState extends State<HomePageStudent> {
  final List<Map<String, String>> stands = [
    {
      "name": "Stand A",
      "waktu": "Jam Buka : 10.00 - 12.00",
      "img": "assets/images/stand.png"
    },
    {
      "name": "Stand B",
      "waktu": "Jam Buka : 10.00 - 12.00",
      "img": "assets/images/stand.png"
    },
    {
      "name": "Stand C",
      "waktu": "Jam Buka : 10.00 - 12.00",
      "img": "assets/images/stand.png"
    },
    {
      "name": "Stand D",
      "waktu": "Jam Buka : 10.00 - 12.00",
      "img": "assets/images/stand.png"
    },
    {
      "name": "Stand A",
      "waktu": "Jam Buka : 10.00 - 12.00",
      "img": "assets/images/stand.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderHomePage(name: "Yanto"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Image.asset(
              "assets/images/banner1.webp",
              height: 166,
              fit: BoxFit.cover,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              "Daftar Kantin",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.w600,
                color: Color(0xff6A9C89),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25.0,
                  mainAxisSpacing: 25.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: stands.length,
                itemBuilder: (context, index) {
                  return StandCard(
                    nameStand: stands[index]["name"]!,
                    waktu: stands[index]["waktu"]!,
                    img: stands[index]["img"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarStudent(selectedItem: 0),
    );
  }
}
