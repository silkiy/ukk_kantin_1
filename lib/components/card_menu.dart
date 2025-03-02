import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMenu extends StatefulWidget {
  final String name;
  final String price;
  final String img;
  const CardMenu({
    super.key,
    required this.name,
    required this.price,
    required this.img,
  });

  @override
  State<CardMenu> createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  int quantity = 1;

  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffD9D9D9),
              image: DecorationImage(
                  image: AssetImage(widget.img),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                widget.price,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff848484),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: _decrement,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color(0xffDDDDDD),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "$quantity",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 12),
              GestureDetector(
                onTap: _increment,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color(0xff6A9C89),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
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
