import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_riga/pages/student/detail_kantin_page.dart';

class StandCard extends StatelessWidget {
  final String nameStand;
  final String img;
  final String waktu;
  const StandCard({
    super.key,
    required this.nameStand,
    required this.img,
    required this.waktu,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailKantinPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: Offset(1, 1),
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.19,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    nameStand,
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff16423C),
                    ),
                  ),
                  Text(
                    waktu,
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6A9C89),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
