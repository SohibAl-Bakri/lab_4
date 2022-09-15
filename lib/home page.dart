import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_4/information.dart';
import 'package:lab_4/prefrence.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 70,
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU9fOQPFktygphPbpkeTGohhv4RxGe0YQCVQ&usqp=CAU'),
          ),
        ),
        child: Column(
          children: [
            Card(
              color: Colors.greenAccent,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.amber[100],
                  child: Text(
                    'Welcome to our travel app',
                    style: GoogleFonts.oleoScript(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 150),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PrefrencePage();
                  },
                ));
              },
              icon: Icon(Icons.favorite),
              label: Text(
                'Your Prefrence Page',
                style: GoogleFonts.oleoScript(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () { Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return InformationPage();
                  },
                ));},
              icon: Icon(Icons.favorite),
              label: Text(
                'Fill Your Information',
                style: GoogleFonts.oleoScript(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
