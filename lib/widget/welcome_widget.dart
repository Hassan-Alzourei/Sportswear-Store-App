import 'package:flutter/material.dart';
import 'package:flutter_app_project4/screen/home_screen.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/realstart.png"),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/15banerreal.png"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welocome Madridistas",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                fontStyle: FontStyle.normal),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Madrid, Madrid, Madrid ¡Hala Madrid! Y nada más Y nada más ¡Hala Madrid!",
              style: TextStyle(fontSize: 15, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(90),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 6),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Click here Madridistas",
                    style: TextStyle(fontSize: 22, color: Colors.black54),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
