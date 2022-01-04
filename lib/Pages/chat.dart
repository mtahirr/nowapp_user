import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:nowapp/Pages/favourite.dart';

class Chatapp extends StatefulWidget {
  @override
  _ChatappState createState() => _ChatappState();
}

class _ChatappState extends State<Chatapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet: Container(
      //   color: Colors.white,
      // ),
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouritePage()));
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Image(
                    image: AssetImage('assets/camera_ic.png'),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _showMyDialog1();
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Image(
                    image: AssetImage('assets/mic_ic.png'),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'اكتب رساله',
                      hintStyle: TextStyle(fontSize: 12),
                      suffixIcon: Image.asset('assets/send_ic.png'),
                      border: InputBorder.none),
                ),
              ),
            ),
            FocusedMenuHolder(
              menuWidth: MediaQuery.of(context).size.width * 0.50,
              blurSize: 5.0,
              menuItemExtent: 45,
              menuBoxDecoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              duration: Duration(milliseconds: 100),
              animateMenuItems: true,

              blurBackgroundColor: Colors.black54,
              openWithTap:
                  true, // Open Focused-Menu on Tap rather than Long Press
              menuOffset:
                  10.0, // Offset value to show menuItem from the selected item
              bottomOffsetHeight:
                  10.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
              menuItems: <FocusedMenuItem>[
                // Add Each FocusedMenuItem  for Menu Options
                FocusedMenuItem(
                    title: Text("Open"),
                    trailingIcon: Icon(Icons.open_in_new),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                    }),
                FocusedMenuItem(
                    title: Text("Share"),
                    trailingIcon: Icon(Icons.share),
                    onPressed: () {}),
                FocusedMenuItem(
                    title: Text("Favorite"),
                    trailingIcon: Icon(Icons.favorite_border),
                    onPressed: () {}),
                FocusedMenuItem(
                    title: Text(
                      "Delete",
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    trailingIcon: Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {}),
              ],
              onPressed: () {},
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Image(
                    image: AssetImage('assets/options_ic.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  
                  Expanded(
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
                       
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(vertical: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    //  Navigator.push(
                                                    //     context, MaterialPageRoute(builder: (ctx) => LocationMapPage()));
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(20),
                                                        color: Color(0xffEF0000)),
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(
                                                          vertical: 5, horizontal: 20),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(20),
                                                        gradient: LinearGradient(
                                                            begin: Alignment.topCenter,
                                                            end: Alignment.bottomCenter,
                                                            colors: [
                                                              Color(0xff00FF77),
                                                              Color(0xff2F00B4),
                                                            ]),
                                                        // color: Color(0xff6A007D),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'تم السداد',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors.white,
                                                              fontWeight:
                                                                  FontWeight.w300),
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "محمد",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                            Container(
                                              // color: Colors.red,
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '4.6',
                                                        style: TextStyle(
                                                            color: Colors.grey[400]),
                                                      ),
                                                      RatingBar.builder(
                                                        initialRating: 3,
                                                        itemSize: 12,
                                                        minRating: 1,
                                                        unratedColor: Colors.grey[300],
                                                        direction: Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemPadding:
                                                            EdgeInsets.symmetric(
                                                                horizontal: 2.0),
                                                        itemBuilder: (context, _) =>
                                                            Icon(
                                                          Icons.star,
                                                          color: Colors.amber,
                                                        ),
                                                        onRatingUpdate: (rating) {
                                                          print(rating);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.05),
                                CircleAvatar(
                                  radius: 34,
                                  backgroundColor: Colors.red,
                                  // backgroundImage: AssetImage('assets/profile_thumb.png'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Row(
                                  children:[
                                    Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        child: Image(
                                          image: AssetImage('assets/paymentm.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "مشاهدة الفاتورة",
                                      textAlign: TextAlign.right,
                                      style:
                                          TextStyle(fontSize: 13, color: Color(0xff009688)),
                                    ),
                                  ]
                                ),
                                Row(
                                  children: [
                                    Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)),
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 3),
                                          child: Icon(
                                            Icons.location_on,
                                            color: Color(0xffA20000),
                                            size: 20,
                                          )),
                                    ),
                                    Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        child: Image(
                                          image: AssetImage('assets/phone-call.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "مشاهدة الفاتورة",
                                      textAlign: TextAlign.right,
                                      style:
                                          TextStyle(fontSize: 13, color: Color(0xffA20000)),
                                    ),
                                    Image(
                                      image: AssetImage('assets/bill.png'),
                                    ),
                                  ],
                                ),
                               
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   Image.asset('assets/button.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showMyDialog() {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                    child: Column(
                      children: [
                        Text(
                          'محمد',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          itemSize: 18,
                          minRating: 1,
                          unratedColor: Colors.grey[300],
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '33',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    'عدد الطلبات',
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 20),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.keyboard_arrow_left_rounded,
                                        color: Colors.grey[400],
                                        size: 25,
                                      ),
                                      Text(
                                        '17',
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'عدد الطلبات',
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -60,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.red,
                    // backgroundImage: AssetImage('assets/profile_thumb.png'),
                  ),
                ),
              ],
            ));
      },
    );
  }

  _showMyDialog1() {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                    child: Column(
                      children: [
                        Text(
                          'محمد',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          itemSize: 18,
                          minRating: 1,
                          unratedColor: Colors.grey[300],
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: TextField(
                              maxLength: 8,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'اكتب رأيك',
                                  hintStyle: TextStyle(fontSize: 12)),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -60,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.red,
                    // backgroundImage: AssetImage('assets/profile_thumb.png'),
                  ),
                ),
              ],
            ));
      },
    );
  }

  _options() {
    return FocusedMenuHolder(
      menuWidth: MediaQuery.of(context).size.width * 0.50,
      blurSize: 5.0,
      menuItemExtent: 45,
      menuBoxDecoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      duration: Duration(milliseconds: 100),
      // animateMenuItems: true,
      blurBackgroundColor: Colors.black54,
      // openWithTap: true, // Open Focused-Menu on Tap rather than Long Press
      menuOffset: 10.0, // Offset value to show menuItem from the selected item
      bottomOffsetHeight:
          10.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
      menuItems: <FocusedMenuItem>[
        // Add Each FocusedMenuItem  for Menu Options
        FocusedMenuItem(
            title: Text("Open"),
            trailingIcon: Icon(Icons.open_in_new),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
            }),
        FocusedMenuItem(
            title: Text("Share"),
            trailingIcon: Icon(Icons.share),
            onPressed: () {}),
        FocusedMenuItem(
            title: Text("Favorite"),
            trailingIcon: Icon(Icons.favorite_border),
            onPressed: () {}),
        FocusedMenuItem(
            title: Text(
              "Delete",
              style: TextStyle(color: Colors.redAccent),
            ),
            trailingIcon: Icon(
              Icons.delete,
              color: Colors.redAccent,
            ),
            onPressed: () {}),
      ],
      onPressed: () {},
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset("assets/options_ic.jpg"),
          ],
        ),
      ),
    );
  }
}
