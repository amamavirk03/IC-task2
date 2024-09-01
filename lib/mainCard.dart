import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Maincard extends StatelessWidget {
  final String maintext;
  final String noOfdays;
  final String endtext;
  final Color containercolor;
  final Color smallcontainercolor;

  const Maincard({
    super.key,
    required this.maintext,
    required this.noOfdays,
    required this.endtext,
    required this.containercolor,
    required this.smallcontainercolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(      width: 180,
      height: 200,
      decoration: BoxDecoration(
        color: containercolor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              maintext,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              noOfdays,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: smallcontainercolor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              width: 120,
              height: 25,
              child: Center(
                child: Text(
                  endtext,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
