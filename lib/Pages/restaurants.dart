import 'package:flutter/material.dart';
import 'package:nowapp/Pages/watchShow.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
           padding: EdgeInsets.symmetric(horizontal: 10),
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
                      'المطاعم',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffAD122A),
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
              Image.asset('assets/header.png'),
              Expanded(
                child: ListView.builder(
                  
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) => InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => WatchShowPage()));
                    },
                    child: Stack(
                      children: [
                        Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding:
                                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff990000),
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'الفطور',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '70',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff777576),
                                                  ),
                                                ),
                                                Text(
                                                  'ريال',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff777576),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  '4.3',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                           
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 70,)
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right:0,
                          child: Image.asset('assets/Burger_King_logo1.png',height: 80,))
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
}
