import 'package:flutter/material.dart';

class STTPCardManager extends StatefulWidget {
  @override
  _STTPCardManagerState createState() => _STTPCardManagerState();
}

class _STTPCardManagerState extends State<STTPCardManager> {
  int currentSemester = 4;

  void increaseSemester() {
    setState(() {
      if (currentSemester < 14) currentSemester += 1;
    });
  }

  void decreaseSemester() {
    setState(() {
      if (currentSemester > 1) currentSemester -= 1;
    });
  }

  void resetSemester() {
    setState(() {
      currentSemester = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2C),
      appBar: AppBar(
        title: const Text('STTP Card Manager'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 167, 167, 222),
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'decrease',
            onPressed: decreaseSemester,
            backgroundColor: Colors.red[300],
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: resetSemester,
            backgroundColor: Colors.blueGrey,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'increase',
            onPressed: increaseSemester,
            backgroundColor: Colors.green[400],
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
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
              buildLabel('CURRENT SEMESTER'),
              buildValue('Semester $currentSemester'),
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
      style: const TextStyle(
        color: Colors.tealAccent,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        letterSpacing: 1.5,
      ),
    );
  }
}
