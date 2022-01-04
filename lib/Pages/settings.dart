import 'package:flutter/material.dart';
import 'package:nowapp/Pages/homePage.dart';
import 'package:nowapp/Pages/profilePersonal.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool switchControl = false;
  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
    } else {
      setState(() {
        switchControl = false;
      });
    }
  }

  bool switchControl1 = false;
  void toggleSwitch1(bool value) {
    if (switchControl1 == false) {
      setState(() {
        switchControl1 = true;
      });
    } else {
      setState(() {
        switchControl1 = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/Artboard.png'),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الاعدادات',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/button.png'),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.white,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Image.asset('assets/Group 62.png'),
                      ),

                      InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context, MaterialPageRoute(builder: (ctx) => EditScreen()));
                          },
                          child: Image.asset('assets/Group 61.png')),
                      // SizedBox(
                      //   width: 5,
                      // ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'اسم الستخدم',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'uername@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.2,
                  // width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "ريال",
                                style: TextStyle(
                                    color: Color(0xff990000),
                                    fontSize: 15,
                                    fontFamily: 'JF Flat'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "50",
                                style: TextStyle(
                                  color: Color(0xff990000),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "رصيد المحفظة  ",
                                style: TextStyle(
                                  color: Color(0xff990000),
                                  fontSize: 15,
                                ),
                              ),
                              Image.asset('assets/wallet.png')
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.01,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios,
                              size: 20, color: Color(0xff990000)),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 50),
                                child: Text(
                                  "تقيم المندوب  ",
                                  style: TextStyle(
                                    color: Color(0xff990000),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Image.asset('assets/car1.png')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.2,
                  // width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Transform.scale(
                                  scale: 1.10,
                                  child: Switch(
                                    onChanged: toggleSwitch,
                                    value: switchControl,
                                    activeColor: Colors.white,
                                    activeTrackColor: Color(0xff990000),
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.grey,
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "الاشعارات  ",
                                style: TextStyle(
                                    color: Color(0xff990000),
                                    fontSize: 15,
                                    fontFamily: 'JF Flat'),
                              ),
                              Image.asset(
                                'assets/alarm.png',
                                height: 25,
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios,
                                size: 20, color: Color(0xff990000)),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text(
                                    "دعوة اصدقاء  ",
                                    style: TextStyle(
                                      color: Color(0xff990000),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Image.asset('assets/group.png')
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios,
                                size: 20, color: Color(0xff990000)),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text(
                                    "تسجيل الحساب البنكي  ",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xff990000),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset('assets/credit-card.png')
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Transform.scale(
                                    scale: 1.10,
                                    child: Switch(
                                      onChanged: toggleSwitch,
                                      value: switchControl,
                                      activeColor: Colors.white,
                                      activeTrackColor: Color(0xff990000),
                                      inactiveThumbColor: Colors.white,
                                      inactiveTrackColor: Colors.grey,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "اللغة  ",
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'JF Flat'),
                                ),
                                Image.asset('assets/internet.png')
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.02,
                      // ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios,
                                size: 20, color: Color(0xff990000)),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text(
                                    "دعم الطوارئ   ",
                                    style: TextStyle(
                                      color: Color(0xff990000),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Image.asset('assets/roshan.png')
                              ],
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          _showMyDialog();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_back_ios,
                                  size: 20, color: Color(0xff990000)),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      "تسجيل كامقدم الخدمة  ",
                                      style: TextStyle(
                                        color: Color(0xff990000),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Image.asset('assets/service.png')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios,
                                size: 20, color: Color(0xff990000)),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text(
                                    "تيلجرام  ",
                                    style: TextStyle(
                                      color: Color(0xff990000),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Image.asset('assets/telegram.png')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ProfilePersonal()));
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.2,
                    // width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "تسجيل الخروج  ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff990000),
                              fontFamily: 'JF Flat'),
                        ),
                        Image.asset('assets/logout.png')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showMyDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                children: [
                Image.asset('assets/Group 200.png'),
                  Image.asset('assets/Group 201.png'),
                    Image.asset('assets/Group 483.png'),
                ],
              ),
            ));
      },
    );
  }
}
