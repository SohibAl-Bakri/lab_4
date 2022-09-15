import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_4/home%20page.dart';

class PrefrencePage extends StatefulWidget {
  const PrefrencePage({super.key});

  @override
  State<PrefrencePage> createState() => _PrefrencePageState();
}

class _PrefrencePageState extends State<PrefrencePage> {
  String city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 70,
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnYQ2S9hvcxo_SNPgwwNcSqadxkzVtjfPyOg&usqp=CAU'),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ));
              },
              icon: Icon(Icons.favorite),
              label: Text(
                'Back To Home Page',
                style: GoogleFonts.oleoScript(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 90),
            Container(
              color: Colors.white,
              child: Text(
                'Where You Want To Travel ?',
                style: GoogleFonts.oleoScript(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 50),
            Card(
              color: Colors.black12,
              child: RadioListTile(
                title: Text(
                  'Jordan',
                  style: GoogleFonts.oleoScript(
                    fontSize: 25,
                    color: Colors.orange[900],
                  ),
                ),
                subtitle: Text(
                  'Eg.Wadi-Rum',
                  style: GoogleFonts.oleoScript(
                    color: Colors.red,
                  ),
                ),
                value: 'Jordan',
                secondary: Icon(Icons.card_travel),
                groupValue: city,
                onChanged: ((value) {
                  setState(() {
                    city = value.toString();
                  });
                }),
              ),
            ),
            Card(
              color: Colors.black12,
              child: RadioListTile(
                title: Text(
                  'UAE',
                  style: GoogleFonts.oleoScript(
                    fontSize: 25,
                    color: Colors.orange[900],
                  ),
                ),
                subtitle: Text(
                  'Eg.Dubai',
                  style: GoogleFonts.oleoScript(
                    color: Colors.red,
                  ),
                ),
                secondary: Icon(Icons.card_travel),
                value: 'UAE',
                groupValue: city,
                onChanged: ((value) {
                  setState(() {
                    city = value.toString();
                  });
                }),
              ),
            ),
            Card(
              color: Colors.black12,
              child: RadioListTile(
                title: Text(
                  'Egypt',
                  style: GoogleFonts.oleoScript(
                    fontSize: 25,
                    color: Colors.orange[900],
                  ),
                ),
                subtitle: Text(
                  'Eg.Sharm-ElShaikh',
                  style: GoogleFonts.oleoScript(
                    color: Colors.red,
                  ),
                ),
                secondary: Icon(Icons.card_travel),
                value: 'Egypt',
                groupValue: city,
                onChanged: ((value) {
                  setState(() {
                    city = value.toString();
                  });
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
