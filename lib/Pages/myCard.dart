import 'package:flutter/material.dart';
import 'package:nowapp/Pages/dukan.dart';

class MyCardPage extends StatefulWidget {
  @override
  _MyCardPageState createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  var dataList = [
       'مفروشات المنزل',
       'أصناف اخرى',
       'العاب اطفال',
       'الكترونيات',
        'سوبر ماركت',
       'عروض العيد',
        'كل العروض',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(0,0, 0, 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 2, color: Color(0xffC5C5C4), offset: Offset(0, 0))
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'بطاقتي ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffAD122A),
                        fontSize: 18,
                      ),
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
                elevation: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Image.asset('assets/Group 394.png'),
                    Image.asset('assets/Group 393.png'),
                  
                     Image.asset('assets/Group 392.png'),
                  ],
                ),
              )),
                 SizedBox(
                height: 20,
              ),
               Container(
         
            height: MediaQuery.of(context).size.height * 0.06,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Color(0xffFFC7C7)
                  ),
                  child: Center(child: Text(dataList[index],textAlign: TextAlign.center,style:TextStyle(fontSize: 12))),
                );
              },
            ),
          ),
            SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset('assets/ct1.png'),
                    SizedBox(width: 20,),
                    Image.asset('assets/ct2.png'),
                ]
              ),
               SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset('assets/ct3.png'),
                    SizedBox(width: 20,),
                    Image.asset('assets/ct4.png'),
                ]
              ),
               SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset('assets/ct5.png'),
                    SizedBox(width: 20,),
                    Image.asset('assets/ct6.png'),
                ]
              ),
               SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset('assets/ct7.png'),
                    SizedBox(width: 20,),
                    Image.asset('assets/ct8.png'),
                ]
              ),
               SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset('assets/ct9.png'),
                    SizedBox(width: 20,),
                    Image.asset('assets/ct10.png'),
                ]
              ),
              Spacer(),
               InkWell(
                          onTap: () {
                           Navigator.push(
                              context, MaterialPageRoute(builder: (ctx) => DukanPage()));
                          },
                          child: Container(
                           
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffEF0000)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,horizontal: 40
                              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
