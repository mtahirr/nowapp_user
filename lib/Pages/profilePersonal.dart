import 'package:flutter/material.dart';
import 'package:nowapp/Pages/notification.dart';
import 'package:nowapp/Pages/settings.dart';

class ProfilePersonal extends StatefulWidget {
  @override
  _ProfilePersonalState createState() => _ProfilePersonalState();
}

class _ProfilePersonalState extends State<ProfilePersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 2, color: Color(0xffC5C5C4), offset: Offset(0, 0))
          ],
          image: DecorationImage(
            image: AssetImage('assets/Artboard.png'),
          ),
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
                  Text(
                    'الملف الشحصي',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image.asset('assets/button.png')
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                       
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "محمد",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff990000)
                                ),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1),
                              Text(
                                "الاسم",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                         
                          width: MediaQuery.of(context).size.width,
                           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios,size: 25,   color: Color(0xff990000)),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.06),
                                  Text(
                                    "الرمز",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[400],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                        
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                 Icon(Icons.arrow_back_ios,size: 25,   color: Color(0xff990000)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "+966 979797867",
                                    style: TextStyle(
                                      fontSize: 15,
                                        color: Color(0xff990000)
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.06),
                                  Text(
                                    "الجوال",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                        
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios,size: 25,   color: Color(0xff990000)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "muhammad@example.com",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff990000)
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.06),
                                  Text(
                                    "الايميل",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[400],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (ctx)=>NotificationPage()));
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                           
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.arrow_back_ios,size: 25,   color: Color(0xff990000)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "oct 24, 1998",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff990000)
                                      ),
                                    ),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width *
                                            0.06),
                                    Text(
                                      "تاريخ الميلاد",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey[400],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
