import 'package:earning_app/customnavigationbar.dart';
import 'package:earning_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import 'loadingscreen.dart';
import 'navigationBar.dart';
class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  String _displayValue = "";
  final userRef = FirebaseFirestore.instance.collection('users').doc('user_id');

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == "<") {
        _displayValue = _displayValue.substring(0, _displayValue.length - 1);
      } else {
        _displayValue += buttonText;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(72,74,73,0.6),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Icon(Icons.close,color:  Color(0xFF05BB44),size: 30,),
              ),
SizedBox(height: 20,),
Center(child: Text("Add Cash",style: TextStyle(fontFamily: 'CashMarket-BoldRounded',fontSize: 18,color: Colors.white),)),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\$",style: TextStyle(fontSize: 70,color:  Color(0xFF05BB44),fontWeight: FontWeight.bold,
                      fontFamily:'cash' ),),
                  Text(
                    _displayValue.replaceAllMapped(
                      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                          (Match match) => '${match.group(1)},',
                    ),
                    style: TextStyle(fontSize: 70,color:  Color(0xFF05BB44),fontFamily:'cash'),
                  ),
                ],
              ),
             Spacer(),

              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton("1",),
                    _buildButton("2"),
                    _buildButton("3"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton("4"),
                    _buildButton("5"),
                    _buildButton("6"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton("7"),
                    _buildButton("8"),
                    _buildButton("9"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,bottom: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton("."),
                    _buildButton("0"),
                    _buildButton("<"),
                  ],
                ),
              ),
Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () async {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return LoadingScreen();
                      },
                    );

                    final docSnapshot = await userRef.get();
                    final previousValue = docSnapshot.data()?['displayValue'] ?? '0';
                    final previousDoubleValue = double.parse(previousValue.replaceAll(',', ''));

                    // Add current and previous value
                    final currentDoubleValue = double.parse(_displayValue.replaceAll(',', ''));
                    final totalValue = (previousDoubleValue + currentDoubleValue).toStringAsFixed(2);

                    // Update value in Firestore
                    await userRef.update({'displayValue': totalValue});

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomBottomNavigationBar(),
                      ),
                    );

                  },
                  child: Container(
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color:  Color(0xFF05BB44),
                    ),
                    child: Center(child: Text("Add",style: TextStyle(fontFamily: 'CashMarket-BoldRounded',fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget _buildButton(String buttonText) {
    return MaterialButton(
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 20.0,color: Colors.white,fontFamily: 'cash'),
      ),
      onPressed: () => _onButtonPressed(buttonText),
    );
  }
}
