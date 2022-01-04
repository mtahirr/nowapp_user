import 'package:flutter/material.dart';
import 'package:nowapp/Pages/homePage.dart';
import 'package:nowapp/Pages/notification.dart';


class AdminWelcome extends StatefulWidget {
  @override
  _AdminWelcomeState createState() => _AdminWelcomeState();
}

class _AdminWelcomeState extends State<AdminWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg_ic.png'), fit: BoxFit.cover),
        ),
        child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
               border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
             Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Image.asset('assets/logo.png'),
                    Image.asset('assets/button.png'),
                  ],
                ),
              SizedBox(
                height: 80,
              ),
              Text(
                'اهلا وسهلا بك',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'انقر للبداية',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff28476E),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => HomePage()));
                  },
                  child: Image.asset('assets/finger.png',color: Colors.white,)),
              SizedBox(
                height: 100,
              ),
            ])),
      ),
    );
  }
}
