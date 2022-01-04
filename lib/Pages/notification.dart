import 'package:flutter/material.dart';
import 'package:nowapp/Pages/myRequest.dart';


class NotificationPage extends StatefulWidget {
 

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                blurRadius: 2,
               color: Color(0xffC5C5C4),
                offset: Offset(0, 0)
              )
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
                    'التنبيهات',
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
           _myContianer('تم استلام طلبك',),
            SizedBox(
              height: 10,
            ),
             _myContianer('المندوب متجه اليك',),
              SizedBox(
              height: 10,
            ),
            Card(
                elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.only(top: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                         decoration:BoxDecoration(
                           border: Border.all(color:Color(0xff990000),),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Text(
                    'تابع المندوب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xffFFBBBB),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                       ),
                      Image.asset('assets/alarm.png'),
                       
                    ],
                  ),
                ),
              ),
             _myContianer('المندوب وصل - مجموع الدفع ٢٢ ريال',),
            ],
          ),
        ),
      ),
      
    );
  }
  Widget _myContianer(String text){
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MyRequestPage()));
      },
      child: Card(
              elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
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