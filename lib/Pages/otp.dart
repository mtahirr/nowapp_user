import 'package:flutter/material.dart';

import 'adminlogin.dart';


class OTP extends StatefulWidget {
 
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  TextEditingController three = TextEditingController();
  TextEditingController four = TextEditingController();
  TextEditingController five = TextEditingController();
  TextEditingController six = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
          decoration: BoxDecoration(
            image: DecorationImage(
                // colorFilter: new ColorFilter.mode(
                //     Colors.white.withOpacity(0.2), BlendMode.dstATop),
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/button.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 60),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                       color: Color(0xffFFBBBB),
                      width: 2,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'التحقق من رقم الهاتف',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                        child: Text(
                      '. أدخل الرقم المرسل لرقم هاتفك',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                             color: Color(0xffFFBBBB),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: one,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xffFFBBBB),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: two,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                               color: Color(0xffFFBBBB),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: three,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Color(0xffFFBBBB),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: four,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                               color: Color(0xffFFBBBB),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: five,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xffFFBBBB),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: six,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => AdminLogin()));
                },
                child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffEF0000)),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [ Color(0xffEF0000),Colors.purple, ]),
                          color: Color(0xff6A007D),
                        ),
                        child: Center(
                          child: Text(
                            'ارسال',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
