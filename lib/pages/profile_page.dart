import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final int currentSemester = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2C),
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 167, 167, 222),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/adil.jpg'),
                ),
              ),
              Divider(
                color: Colors.grey[700],
                height: 50.0,
              ),
              buildLabel('NAME'),
              buildValue('Muhammad Adil Imamul Haq Mubarak'),
              const SizedBox(height: 30.0),
              buildLabel('NIM'),
              buildValue('202311008'),
              const SizedBox(height: 30.0),
              buildLabel('PROGRAM STUDI'),
              buildValue('Informatika'),
              const SizedBox(height: 30.0),
              buildLabel('HOMETOWN'),
              buildValue('Pati, Jawa Tengah'),
              const SizedBox(height: 30.0),
              buildLabel('CURRENT SEMESTER'),
              buildValue('Semester $currentSemester'),
              const SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.tealAccent[100],
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Text(
                      'adilmubarak126@gmail.com',
                      style: const TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
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

  Widget buildLabel(String label) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.grey[400],
        letterSpacing: 2.0,
        fontSize: 14.0,
      ),
    );
  }

Widget buildValue(String value) {
  return Text(
    value,
    style: const TextStyle( // hanya TextStyle-nya yang const, bukan Text widget
      color: Colors.tealAccent,
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
      letterSpacing: 1.5,
    ),
  );
}
}