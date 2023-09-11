import 'package:flutter/material.dart';
import 'package:travel/home_page.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => home_page(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 200),
          child: Image(image: ExactAssetImage("img/biker.gif")),
        ),
        Column(
          children: [
            Text(
              "Traveling...",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'baloo'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Text(
                "-A₹-",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
