import 'package:flutter/material.dart';
import 'package:nowapp/Pages/chat.dart';

class SerachforProduct extends StatefulWidget {
  @override
  _SerachforProductState createState() => _SerachforProductState();
}

class _SerachforProductState extends State<SerachforProduct> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  Object _itemValue1;
  var listItem1 = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "البحث عن منتج",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffAD122A),
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "ابحث عن مطعم ,كوفي أو أي مكان",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      _ButtonPressed();
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/filter.png'),
                        Text(
                          'التصفية',
                          style: TextStyle(
                            color: Color(0xffAD122A),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffD9D9D9)),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          hint: Text(
                            'الكل ( أفضل تطابق ) ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // icon: Icon(
                          //   Icons.keyboard_arrow_down,
                          //   color: Color(0xff7e7b84),
                          // ),
                          value: _itemValue1,
                          onChanged: (value) {
                            setState(() {
                              _itemValue1 = value;
                            });
                          },
                          items: listItem1.map((value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color(0xffAD122A),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/Untitled-2.png'),
                    SizedBox(
                      width: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'رز أبو كاس مزه هندي بسمتي 5 كجم',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xffAD122A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Abu Kass Indian Sella Muzza Rice 5Kg ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xffAD122A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '41.95',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough,
                            color: Color(0xff949494),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '40.95',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffAD122A),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'ريال',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffAD122A),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/ct6.png'),
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => Chatapp()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffEF0000)),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 40),
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

  void _ButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff737373),
            height: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: bottommenu(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
            ),
          );
        });
  }

  Form bottommenu() {
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(
            Icons.close,
            color: Color(0xffAD122A),
          ),
          Text(
            "إمسح",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff0A0FAF),
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "منافذ",
                style: TextStyle(color: Color(0xffAD122A), fontSize: 16),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset('assets/ct1.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ct2.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ct3.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ct4.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ct5.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ct6.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ct7.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ct8.png'),
              ],
            ),
          ),
          Text(
            "إمسح",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff0A0FAF),
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "السعر",
                style: TextStyle(color: Color(0xffAD122A), fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 8,
                backgroundColor: Color(0xffFF9898),
                child: CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 0.2),
                ),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Color(0xffFF9898),
                child: CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ريال',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Color(0xffAD122A), fontSize: 13),
                  ),
                  Text(
                    '20',
                    style: TextStyle(color: Color(0xffAD122A), fontSize: 13),
                  ),
                ],
              ),
              Text(
                '=',
                style: TextStyle(color: Color(0xffAD122A), fontSize: 13),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ريال',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Color(0xffAD122A), fontSize: 13),
                  ),
                  Text(
                    '20',
                    style: TextStyle(color: Color(0xffAD122A), fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    //  Navigator.push(
                    //     context, MaterialPageRoute(builder: (ctx) => LocationMapPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEF0000)),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 40),
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
                          'تم',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    //  Navigator.push(
                    //     context, MaterialPageRoute(builder: (ctx) => LocationMapPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEF0000)),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          'إعادة الضبط',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
