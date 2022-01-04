import 'package:flutter/material.dart';

import 'otp.dart';


class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  TextEditingController inputcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
               border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(30)),
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
                        'هل نسيت كلمة السر',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
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
                          'أدخل رقم هاتفك أدناه وسنرسل إليك رسالة نصية تحتوي على رمز التحقق لتغيير كلمة المرور الخاصة بك',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(
                      left: 30, right: 30, top: 150, bottom: 50),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                       color: Color(0xffFFBBBB),
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: inputcontroller,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'رقم الهاتف',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFFBBBB),
                        ),
                        border: InputBorder.none,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => OTP()));
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
      ),
    );
  }
}
