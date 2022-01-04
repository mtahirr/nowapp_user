import 'package:flutter/material.dart';
import 'package:nowapp/Pages/locationMap.dart';

class SendRequestPage extends StatefulWidget {
  @override
  _SendRequestPageState createState() => _SendRequestPageState();
}

class _SendRequestPageState extends State<SendRequestPage> {
  var pay = false;
  var mada = false;
  var stcpay = false;
  var kasah = true;
  var visa = false;
  var mcart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 2, color: Color(0xffC5C5C4), offset: Offset(0, 0))
            ],
            image: DecorationImage(
              image: AssetImage('assets/Artboard 100.png'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Image.asset('assets/mac.png'),
                      
                      Image.asset('assets/button.png')
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "اكتب طلبك",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
               
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          textAlign: TextAlign.right,
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: 'اكتب تفاصيل اضافية',
                            hintStyle: TextStyle(
                              color: Color(0xffC8C8C8),
                              fontSize: 13,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                        Image.asset('assets/camera.png')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "طريقة الدفع",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        // width: MediaQuery.of(context).size.width*0.4,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/method1.png',
                              height: 15,
                            ),
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                value: pay,
                                onChanged: (value) {
                                  setState(() {
                                    pay = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        // width: MediaQuery.of(context).size.width*0.4,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/method2.png',
                              height: 20,
                            ),
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                tristate: true,
                                value: kasah,
                                onChanged: (value) {
                                  setState(() {
                                    kasah = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        // width: MediaQuery.of(context).size.width*0.4,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'كاش',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xffF9B506),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Image.asset(
                              'assets/method3.png',
                              height: 12,
                            ),
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                // tristate: true,
                                value: mada,
                                onChanged: (value) {
                                  setState(() {
                                    mada = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        // width: MediaQuery.of(context).size.width*0.4,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Image.asset('assets/method4.png'),
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                // tristate: true,
                                value: stcpay,
                                onChanged: (value) {
                                  setState(() {
                                    stcpay = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        // width: MediaQuery.of(context).size.width*0.4,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Image.asset('assets/method5.png'),
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                // tristate: true,
                                value: visa,
                                onChanged: (value) {
                                  setState(() {
                                    visa = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        // width: MediaQuery.of(context).size.width*0.4,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Image.asset('assets/method6.png'),
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                // tristate: true,
                                value: mcart,
                                onChanged: (value) {
                                  setState(() {
                                    mcart = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'اضف كوبون',
                            hintStyle: TextStyle(color: Color(0xffB5B5B5)))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    
                     Expanded(child:  Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10)),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 5, ),
                            decoration: BoxDecoration(
                               
                               ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                              'موقع تسليم الشحنة',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff990000),
                                              ),
                                            ),
                                        Text(
                                                  'الرياض - حي الصحافة ,شارع انس بن مالك',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                   
                                                  ),
                                                ),
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset('assets/delivery-box.png'),
                              ],
                            ),
                          ),
                        ),),
                         Expanded(child:  Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10)),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 5, ),
                            decoration: BoxDecoration(
                               
                               ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                              'موقع تسليم الشحنة',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff990000),
                                              ),
                                            ),
                                        Text(
                                                  'الرياض - حي الصحافة ,شارع انس بن مالك',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                   
                                                  ),
                                                ),
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset('assets/location.png'),
                              ],
                            ),
                          ),
                        ),)
                  ],
                ),
                 Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10)),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 5, ),
                            decoration: BoxDecoration(
                               
                               ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                              'وقت التوصيل',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff990000),
                                              ),
                                            ),
                                        Text(
                                                  'ساعة1',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                   
                                                  ),
                                                ),
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset('assets/clock.png'),
                              ],
                            ),
                          ),
                        ),
                         SizedBox(
                  height: 20,
                ),
                InkWell(
                   onTap: () {
                    Navigator.push(
                       context, MaterialPageRoute(builder: (ctx) => LocationMapPage()));
                   },
                   child: Container(
                    
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Color(0xffEF0000)),
                     child: Container(
                       padding: EdgeInsets.symmetric(
                         vertical: 5,horizontal: 60
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
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
                         'إرسال الطلب',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 16,
                             color: Colors.white,
                             fontWeight: FontWeight.w300),
                       ),
                     ),
                   )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
