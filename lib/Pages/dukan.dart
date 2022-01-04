import 'package:flutter/material.dart';
import 'package:nowapp/Pages/searchforProduct.dart';

class DukanPage extends StatefulWidget {
  @override
  _DukanPageState createState() => _DukanPageState();
}

class _DukanPageState extends State<DukanPage> {
  var dataList = [
    'بقوليات',
    'لحوم',
    'البان',
    'مكسرات',
    'فواكه وخضروات',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
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
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xffAD122A),
                        ),
                        Text(
                          'الموقع',
                          style: TextStyle(
                            color: Color(0xffAD122A),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/ct6.png'),
                    Image.asset('assets/button.png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/Group 443.png'),
                    Image.asset('assets/Group 442.png'),
                    Image.asset('assets/Group 441.png'),
                    Image.asset('assets/Group 440.png'),
                    Image.asset('assets/Group 439.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFC7C7)),
                      child: Center(
                          child: Text(dataList[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12))),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
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
                           Navigator.push(
                              context, MaterialPageRoute(builder: (ctx) => SerachforProduct()));
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

  Widget myContainer() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage('assets/h1.png'), fit: BoxFit.cover),
      ),
      child: Container(
        padding: EdgeInsets.only( top: 20),
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
          SizedBox(height: 100,),
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
