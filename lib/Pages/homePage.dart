import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:nowapp/Pages/restaurants.dart';
import 'package:nowapp/Pages/watchShow.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List carouselData = [
    "assets/slider1.png",
    "assets/slider2.png",
    "assets/slider3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 24,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
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
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.18,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Swiper(
                    onIndexChanged: (value) {
                      setState(() {
                        _current = value;
                      });
                    },
                    itemCount: carouselData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image(
                        image: AssetImage(carouselData[index]),
                        fit: BoxFit.cover,
                      );
                    },
                    layout: SwiperLayout.DEFAULT,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/special offer.png'),
                    Image.asset('assets/locat.png'),
                    Image.asset('assets/delivery.png'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "المتاجر القريـبة",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/shobak-circle.png'),
                    Image.asset('assets/Albaik_logo.png'),
                    Image.asset('assets/Group 79.png'),
                    Image.asset(
                      'assets/mac.png',
                      height: 50,
                    ),
                    Image.asset('assets/Burger_King_logo.png'),
                    Image.asset('assets/kfc.png'),
                    Image.asset('assets/Group 79.png'),
                    Image.asset('assets/Group 78.png'),
                    Image.asset('assets/Group 142.png'),
                    Image.asset('assets/Group 143.png'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  bottom: 100,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/Artboard 1sava.png'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      margin: EdgeInsets.only(left: 10),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        decoration: BoxDecoration(
                            color: Color(0xffEB4F3D),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Text(
                          'مطاعم',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: MediaQuery.of(context).size.height / 800,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _myContainer();
                  },
                )),
              )
            ],
          )),
    );
  }

  Widget _myContainer() {
    return InkWell(
        onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (ctx)=>RestaurantsPage()));
                },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          bottom: 100,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/grocery.png'), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.only(left: 10),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xffEB4F3D),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Text(
                  'ماركت سوبر',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
