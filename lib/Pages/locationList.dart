import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nowapp/Pages/registerDelegate.dart';

class LocationList extends StatefulWidget {
  @override
  _LocationListState createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  bool switchControl = false;
  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
    } else {
      setState(() {
        switchControl = false;
      });
    }
  }

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
                  color: Colors.black45, offset: Offset(0, 0), blurRadius: 3),
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
                    Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xffA20000),
                          size: 20,
                        ),
                        Text("الموقع",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xffAD122A))),
                      ],
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
              Row(
                children: [
                  Transform.scale(
                      scale: 1.10,
                      child: Switch(
                        onChanged: toggleSwitch,
                        value: switchControl,
                        activeColor: Colors.white,
                        activeTrackColor: Color(0xff990000),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                      )),
                      Text('اعرض الأقرب أولا',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                   onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>RegisterDelegate()));
                    },
                child: Card(
                  elevation: 5,
                  shape:RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                          Text('11701',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                              Text('كم',style: TextStyle(
                          fontSize: 13,
                         
                        ),),
                          Text('11701',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),),
                              Image.asset('assets/located.png'),
                               
                           ],
                         )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
