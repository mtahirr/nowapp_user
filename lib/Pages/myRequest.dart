import 'package:flutter/material.dart';
import 'package:nowapp/Pages/orderplace.dart';
import 'package:nowapp/Pages/profilePersonal.dart';

class MyRequestPage extends StatefulWidget {
  @override
  _MyRequestPageState createState() => _MyRequestPageState();
}

class _MyRequestPageState extends State<MyRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
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
                      'طلباتي',
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
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.only(top: 3,left: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ريال',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff777576),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '17',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff777576),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'تتبع',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff990000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'بيج ماك',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '+ خبز بيج مالك + صلصة بيج ماك +  خس + البصل  المجفف + مخلل  + جبنة الشيدر + قطعة لحم بقر ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff777576),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Image.asset('assets/shopping-bag.png')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OrderPlacePage()));
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.only(top: 3,left: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'ريال',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff777576),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '17',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff777576),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'تم التوصيل',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff990000),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'بيج ماك',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '+ خبز بيج مالك + صلصة بيج ماك +  خس + البصل  المجفف + مخلل  + جبنة الشيدر + قطعة لحم بقر ',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff777576),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Image.asset('assets/shopping-bag.png')),
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

  Widget _myContianer(String text) {
    return InkWell(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OrdersPage()));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.only(top: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff990000),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset('assets/alarm.png'),
            ],
          ),
        ),
      ),
    );
  }
}
