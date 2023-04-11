import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kod_netflix/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        leading: Image.asset("assets/images/netflix_logo_2.png"),
        backgroundColor: kBackgroundColor,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Container(
            color: Colors.red,
            height: 500,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Tendances actuelles",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 10),
                color: Colors.yellow,
                width: 110,
                child: Center(
                  child: Text(index.toString()),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Actuellement au cinema",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 10),
                color: Colors.blue,
                width: 220,
                child: Center(
                  child: Text(index.toString()),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Ils arrivent bientôt",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 10),
                color: Colors.green,
                width: 110,
                child: Center(
                  child: Text(index.toString()),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
