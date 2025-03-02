import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KantinTile extends StatelessWidget {
  final String name;
  const KantinTile({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.2,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff959595),
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
        ),
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width * 0.025,
              fontWeight: FontWeight.w700,
              color: Color(0xff959595),
            ),
          ),
        ),
      ),
    );
  }
}
