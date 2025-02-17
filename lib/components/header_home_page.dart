import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderHomePage extends StatelessWidget {
  final String name;
  const HeaderHomePage({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat Datang!",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.035,
                fontWeight: FontWeight.w600,
                color: Color(0xff6A9C89),
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.w600,
                color: Color(0xff16423C),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff6A9C89),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 24,
              ),
            ),
            SizedBox(width: 15),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff6A9C89),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        )
      ],
    );
  }
}
