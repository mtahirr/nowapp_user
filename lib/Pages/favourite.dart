import 'package:flutter/material.dart';
import 'package:nowapp/Pages/locationList.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black45, offset: Offset(0, 0), blurRadius: 3),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/Group 366.png'),
                        Text("المفضلة لدي",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xffAD122A))),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Image.asset('assets/button.png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: myContainer()),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(child: myContainer()),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => LocationList()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffEF0000)),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffEF0000),
                            Colors.purple,
                          ]),
                      color: Color(0xff6A007D),
                    ),
                    child: Text(
                      'الرجوع إلى الصفحه الرئيسية',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
                 SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage('assets/h1.png'), fit: BoxFit.cover),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white10,
                Color(0xff000000),
              ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 13,
                      child: Image.asset('assets/ct6.png'),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الدكان',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'عيد أضحى مبارك ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'صفحات',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ايام متبقية',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color(0xff00FFDC),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/bookmark.png'),
                        Image.asset('assets/share.png'),
                      ],
                    )),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
