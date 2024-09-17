import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            print('object');
            Navigator.pop(context);
          },
        ),
        title: const Text('Company Info'),
        backgroundColor: const Color.fromARGB(255, 213, 213, 213),
        elevation: 8,
        shadowColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Geeksynergy Technologies Pvt Ltd',
                    style: GoogleFonts.lato(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.blueAccent),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Sanjayanagar, Bengaluru-56',
                          style: GoogleFonts.lato(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.blueAccent),
                      const SizedBox(width: 10),
                      Text(
                        '(+91)- 8904654505',
                        style: GoogleFonts.lato(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.email, color: Colors.blueAccent),
                      const SizedBox(width: 10),
                      Text(
                        'support@geeksynergy.com',
                        style: GoogleFonts.lato(fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Contact Us',
                        style:
                            GoogleFonts.lato(fontSize: 19, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
