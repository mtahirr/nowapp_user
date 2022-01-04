import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nowapp/Pages/myCard.dart';
import 'package:nowapp/Pages/sendRequest.dart';

class LocationMapPage extends StatefulWidget {
  @override
  _LocationMapPageState createState() => _LocationMapPageState();
}

class _LocationMapPageState extends State<LocationMapPage> {
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
                      "ماكدونالدز",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
               Card(
                   elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(20)),
                 child: Container(
                     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                   child: Column(
                     children: [
                       Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10)),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                               
                               ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.save),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                              'موقع تسليم الشحنة',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff990000),
                                              ),
                                            ),
                                        Text(
                                                  'الرياض ـ حي الصحافة. شارع انس بن مالك',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                   
                                                  ),
                                                ),
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset('assets/spot.png'),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                           _showMyDialog();
                          },
                          child: Card(
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
                        ),
                     ],
                   ),
                 ),
               ),
               InkWell(
                          onTap: () {
                           Navigator.push(
                              context, MaterialPageRoute(builder: (ctx) => MyCardPage()));
                          },
                          child: Container(
                          
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEF0000)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,horizontal: 50
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
                                'ارسل الطلب',
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
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                children: [
                  Text('تم ارســال طلبك بنجــاح',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10,),
                   Text('تم ارسال طلبك لجميع المناديبو يمكنك متابعة عروض التوصيلمن  ايقونة التوصيل',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),),
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
                              child: Center(
                                child: Text(
                                  'التوصيل',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          )),
                ],
              ),
            )
             );
      },
    );
}
}
