import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '/models/team.dart';

class DetailsPage extends StatelessWidget {
  final Team team;

  const DetailsPage({super.key, required this.team});
  // const DetailsPage({super.key, required this.city, required this.fullName, required this.division, required this.abbreviation});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Team Details'),
          backgroundColor: Colors.lightBlue[900],
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            elevation: 5,
            shadowColor: Colors.grey,
            color: Colors.lightBlue[900],
            child: SizedBox(
              width: 350,
              height: 600,

              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 70.0, horizontal: 20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 90,
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://e7.pngegg.com/pngimages/910/638/png-clipart-logo-nba-tv-sport-nba.png"),
                        radius: 100,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      team.abbreviation,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[200],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        Text(
                          team.fullName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "City: ${team.city}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Division: ${team.division}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.green[400]!),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        // color: Colors.green[400],
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ), //Card
        ), //Center
      ), //Scaffold
    ); //Material
  }
}
