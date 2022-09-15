import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  List person = [
    '1 Person',
    '2-5 Person',
    '6-10 Person',
    'More than 10 Person',
  ];
  String selectedItem = '2-5 Person';
  String clas = '';
  bool pets = false;
  bool medicine = false;
  bool weapon = false;
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
              'https://www.oic-ci.gc.ca/sites/default/files/2021-09/personal-information.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                color: Colors.amber[100],
                child: Text(
                  'Please Enter Your Information',
                  style: GoogleFonts.oleoScript(
                      fontSize: 30, color: Colors.blue[800]),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'How Many Person ?',
                style: GoogleFonts.oleoScript(
                  fontSize: 30,
                  color: Colors.pink,
                ),
              ),
              Divider(
                thickness: 3,
                color: Colors.cyan,
              ),
              Container(
                width: double.infinity,
                color: Colors.pink[50],
                child: Center(
                  child: DropdownButton(
                      style: GoogleFonts.oleoScript(
                        color: Colors.blue[800],
                      ),
                      value: selectedItem,
                      items: person
                          .map(
                            (e) =>
                                DropdownMenuItem(value: e, child: Text('${e}')),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedItem = value.toString();
                        });
                      }),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Please Select Your Class!',
                style: GoogleFonts.oleoScript(
                  fontSize: 30,
                  color: Colors.pink,
                ),
              ),
              Divider(
                thickness: 3,
                color: Colors.cyan,
              ),
              RadioListTile(
                title: Text(
                  'Business',
                  style: GoogleFonts.oleoScript(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'HOT!!! ONLY 200 per person',
                  style: GoogleFonts.oleoScript(
                    color: Colors.blue[800],
                  ),
                ),
                value: 'Business',
                groupValue: clas,
                onChanged: ((value) {
                  setState(() {
                    clas = value.toString();
                  });
                }),
              ),
              RadioListTile(
                title: Text(
                  'Economy',
                  style: GoogleFonts.oleoScript(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'HOT!!! ONLY 50 per person',
                  style: GoogleFonts.oleoScript(
                    color: Colors.blue[800],
                  ),
                ),
                value: 'Economy',
                groupValue: clas,
                onChanged: ((value) {
                  setState(() {
                    clas = value.toString();
                  });
                }),
              ),
              SizedBox(height: 30),
              Text(
                'Please Select whatever you have during the trip',
                style: GoogleFonts.oleoScript(
                  fontSize: 30,
                  color: Colors.pink,
                ),
              ),
              Divider(
                thickness: 3,
                color: Colors.cyan,
              ),
              CheckboxListTile(
                secondary: Icon(Icons.pets),
                title: Text(
                  "Pets",
                ),
                subtitle: Text(
                  "Cats or Dogs",
                ),
                value: pets,
                onChanged: ((val) {
                  setState(() {
                    pets = val!;
                  });
                }),
              ),
              CheckboxListTile(
                secondary: Icon(Icons.medical_information_outlined),
                title: Text(
                  "Medicine",
                ),
                subtitle: Text(
                  "Anythink",
                ),
                value: medicine,
                onChanged: ((val) {
                  setState(() {
                    medicine = val!;
                  });
                }),
              ),
              CheckboxListTile(
                secondary: Icon(Icons.no_adult_content_outlined),
                title: Text(
                  "Weapon",
                ),
                subtitle: Text(
                  "Anythink",
                ),
                value: weapon,
                onChanged: ((val) {
                  setState(() {
                    weapon = val!;
                  });
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
