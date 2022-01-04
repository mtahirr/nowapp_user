import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:nowapp/Pages/phoneNo.dart';
import 'package:nowapp/Pages/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  // Future<void>signInWithGoogle()async{
  //   await Authentification().signInWithGoogle(context);
  //    setState(() {
  //     isLoading == true;
  //   });
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>HomePage()));

  // }

  //  TextEditingController phonecontroller = TextEditingController();
  // TextEditingController pcontroller = TextEditingController();
  // bool Loading = false;
  // UserCredential authResult;
  // void submit() async {
  //   setState(() {
  //     Loading = true;
  //   });
  //   try {
  //     authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: phonecontroller.text+'@gmail.com', password: pcontroller.text);
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
  //   } on PlatformException catch (e) {
  //     String message = "Please Check Internet";
  //     if (e.message != null) {
  //       message = e.message.toString();
  //     }
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text(message.toString()),
  //     ));
  //     setState(() {
  //       Loading = false;
  //     });
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(e.toString()),
  //       ),
  //     );
  //     setState(() {
  //       Loading = false;
  //     });
  //   }

  //   setState(() {
  //     Loading = false;
  //   });
  // }

  // static String p =
  //     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  // RegExp regExp = new RegExp(p);

  // void validation(context) {
  //   if (phonecontroller.text.isEmpty && pcontroller.text.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text("Both are Empty"),
  //         duration: Duration(milliseconds: 300),
  //       ),
  //     );
  //   } else if (phonecontroller.text.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text("PhoneNumber is Empty"),
  //         duration: Duration(milliseconds: 300),
  //       ),
  //     );
  //   }  else if (phonecontroller.text.length < 11) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text("PhoneNumber Length must be 11 digits"),
  //         duration: Duration(milliseconds: 300),
  //       ),
  //     );
  //   } else if (pcontroller.text.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text("password is Empty"),
  //         duration: Duration(milliseconds: 300),
  //       ),
  //     );
  //   } else if (pcontroller.text.length < 8) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text("password is too short!"),
  //         duration: Duration(milliseconds: 300),
  //       ),
  //     );
  //   } else {
  //     submit();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
          decoration: BoxDecoration(
              color: Colors.black45,
            image: DecorationImage(
                image: AssetImage('assets/bg_ic.png'), fit: BoxFit.cover),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
            
              border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset('assets/logo.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'مرحبا بك',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'اختر اللغة',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'EN',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'عربي',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/EN.png',height: 50,),
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset('assets/saudi.png',height: 40,)
                ]),
               Spacer(),
                Container(
                  margin:EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => PhoneNumber()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    fontSize: 11,
                                   
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                             Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => SignUp()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 9,
                            ),
                            decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                'مستخدم جديد',
                                style: TextStyle(
                                    fontSize: 11,
                                    
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/black-apple-icon.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Apple المتابعة مع',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomePage()));
                  },
                  child: isLoading == false
                      ? Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 70, vertical: 15),
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/google-play-2-555322.png'),
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google Play',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/Huawei-logo-white-1.png'),
                        height: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Huawei  المتابعة مع',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
