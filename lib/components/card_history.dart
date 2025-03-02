import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_riga/pages/student/detail_transaksi_page.dart';

class CardHistory extends StatelessWidget {
  const CardHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        color: Colors.white,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kantin A",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                Flexible(
                  child: Text(
                    "Ayam Geprek (1)",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.025,
                      color: Color(0xff848484),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: Text(
                    "Ayam Geprek (12)",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.025,
                      color: Color(0xff848484),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "12-02-2025",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.038,
                  color: Colors.black45,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailTransaksiPage(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                    vertical: MediaQuery.of(context).size.height * 0.008,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff6A9C89)),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.transparent,
                  ),
                  child: Text(
                    "Lihat Detail",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.038,
                      color: Color(0xff6A9C89),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
