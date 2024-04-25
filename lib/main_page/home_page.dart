import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.download, color: Colors.green),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Income",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 20)),
                        SizedBox(width: 10),
                        Text("Rp. 4.500,00,-",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 16))
                      ],
                    )
                  ],
                ), Row(
                  children: [
                    Container(
                      child: Icon(Icons.upload, color: Colors.amber),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expense",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 20)),
                        SizedBox(width: 10),
                        Text("Rp. 4.500,00,-",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 16))
                      ],
                    )
                  ],
                )
              ],
            ),
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Transaction", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold)),
        ),

        //List Style
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Card(
            elevation: 10,
            child: ListTile(
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.delete), SizedBox(width: 10), Icon(Icons.edit)],
              ),
              title: Text("Rp. 20.000.00,-"),
                subtitle: Text("Tax Information"),
              leading: Container(
                child: Icon(Icons.upload, color: Colors.red),
                decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)
                )
              )
            ),
          ),
        ), Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Card(
            elevation: 10,
            child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.delete), SizedBox(width: 10), Icon(Icons.edit)],
                ),
                title: Text("Rp. 20.000.00,-"),
                subtitle: Text("Tax Information"),
                leading: Container(
                    child: Icon(Icons.download_rounded, color: Colors.green),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(16)
                    )
                )
            ),
          ),
        )
      ],
    )));
  }
}
