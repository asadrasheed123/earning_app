import 'package:earning_app/customnavigationbar.dart';
import 'package:earning_app/navigationBar.dart';
import 'package:flutter/material.dart';
class CashOut extends StatefulWidget {
   CashOut(this.value,{Key? key}) : super(key: key);
  final int value;

  @override
  State<CashOut> createState() => _CashOutState();
}

class _CashOutState extends State<CashOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF232426),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
           SizedBox(width: 90,height: 90,child: Padding(padding: EdgeInsets.only(left: 15),child: Image.asset('images/ticklogo1.png'))),

              Padding(padding: EdgeInsets.only(left: 25),
                child: Text("\$${widget.value} was deposited to your bank account",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
                    fontFamily: 'cashreg')
                  ,),
              ),
Spacer(),
              GestureDetector(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(

                      builder: (context) => CustomBottomNavigationBar()),
                );

              },
                child: Center(
                  child: Container(
                    height: 45,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFF05BB44),
                    ),
                    child: Center(child: Text("Done",style: TextStyle(fontSize:18,color: Colors.white,fontFamily: 'cash',fontWeight: FontWeight.bold),

                        )),
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
