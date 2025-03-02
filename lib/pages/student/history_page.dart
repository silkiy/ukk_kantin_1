import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_riga/components/bottom_nav_bar_student.dart';

import '../../components/card_history.dart';
import '../../components/kantin_tile.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        centerTitle: true,
        // leading: null,
        automaticallyImplyLeading: false,
        title: Text(
          "Checkout",
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.2,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: Color(0xff16423C),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              spreadRadius: 0,
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Semua",
                            style: GoogleFonts.poppins(
                              fontSize: MediaQuery.of(context).size.width * 0.025,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    KantinTile(
                      name: "Kantin A",
                    ),
                    SizedBox(width: 10),
                    KantinTile(
                      name: "Kantin B",
                    ),
                    SizedBox(width: 10),
                    KantinTile(
                      name: "Kantin C",
                    ),
                    SizedBox(width: 10),
                    KantinTile(
                      name: "Kantin D",
                    ),
                    SizedBox(width: 10),
                    KantinTile(
                      name: "Kantin E",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              CardHistory(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarStudent(selectedItem: 1),
    );
  }
}
