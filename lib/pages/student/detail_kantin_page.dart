import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_riga/pages/student/checkout_page_student.dart';

import '../../components/card_menu.dart';

class DetailKantinPage extends StatefulWidget {
  const DetailKantinPage({super.key});

  @override
  State<DetailKantinPage> createState() => _DetailKantinPageState();
}

class _DetailKantinPageState extends State<DetailKantinPage> {
  final List<Map<String, String>> menu = [
    {
      "name": "Katsu",
      "img": "assets/images/katsu.jpg",
      "price": "Rp. 10.000",
    },
    {
      "name": "Es Teh",
      "img": "assets/images/esteh.jpg",
      "price": "Rp. 3.000",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/stand.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 30,
                  left: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff6A9C89),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kantin A",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Menjual berbagai macam makanan jawa yang enak dan\nmurah meriah",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff848484),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Menu Tersedia",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A9C89),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemCount: menu.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return CardMenu(
                          name: menu[index]["name"]!,
                          img: menu[index]["img"]!,
                          price: menu[index]["price"]!,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // print("Tombol Lanjut ditekan");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutPageStudent(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: Color(0xff6A9C89),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Lanjut",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
