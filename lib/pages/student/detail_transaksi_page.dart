import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTransaksiPage extends StatefulWidget {
  const DetailTransaksiPage({super.key});

  @override
  State<DetailTransaksiPage> createState() => _DetailTransaksiPageState();
}

class _DetailTransaksiPageState extends State<DetailTransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        centerTitle: true,
        // leading: null,
        // automaticallyImplyLeading: false,
        title: Text(
          "Detail Transaksi",
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pesanan #0022",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff16423C),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Username :",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                  Text(
                    " Yanto",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Kantin :",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                  Text(
                    " Kantin A",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "Detail Pesanan",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff16423C),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ayam Geprek",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                  Text(
                    "+Rp. 10.000,00",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ayam Geprek",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                  Text(
                    "+Rp. 10.000,00",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Diskon",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                  Text(
                    "-Rp. 5.000,00",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9F9F9F),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Rp. 30.000,00",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 0.9,
                color: Colors.grey[400],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0xff00BC00),
                      ),
                      child: Center(
                        child: Text(
                          "DIkonfirmasi",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
