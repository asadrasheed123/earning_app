import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Dollar extends StatefulWidget {
  const Dollar({Key? key}) : super(key: key);

  @override
  State<Dollar> createState() => _DollarState();
}

final List<String> items = [
  'usd',
  'btc',
  'eth',
];
String? selectedValue;

class _DollarState extends State<Dollar> {
  String _displayValue = "";
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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.document_scanner_outlined,
                    color: Colors.white,
                  ),
                   Icon(
                    Icons.account_circle_outlined,size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$",
                    style: TextStyle(
                        fontFamily: 'CashMarket-BoldRounded',
                        fontSize: 80,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _displayValue.replaceAllMapped(
                      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                          (Match match) => '${match.group(1)},',
                    ),
                    style: TextStyle(
                        fontFamily: 'CashMarket-BoldRounded',
                        fontSize: 80.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
              child:  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(35.0),
                          ),
                        ),
                        builder: (context) {
                          return Container(
                            height: 210,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(35),
                                  topLeft: Radius.circular(35)),
                              color: Colors.grey[900],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text("Select Currency",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),

                                  ListTile(
                                    title: Text("Us Dollar",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                                    leading: Container(color: Colors.green,child: Icon(Icons.currency_bitcoin,color: Colors.white,)),
                                    subtitle: Text("\$20.71",style: TextStyle(color: Colors.grey
                                    ),),
                                    trailing: Icon(Icons.done,color: Colors.green,),
                                  ),
                                  ListTile(
                                    title: Text("Bitcoin",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                                    leading: Container(color: Colors.blue,child: Icon(Icons.currency_bitcoin,color: Colors.white)),
                                    subtitle: Text("\$0.0",style: TextStyle(color: Colors.grey
                                    ),),
                                    trailing: Container(
                                      height: 40,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue
                                      ),
                                      child: Center(child: Text("Buy Bitcoin",style: TextStyle(color: Colors.white,fontSize: 16),)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[700],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text("USD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_downward_outlined,color: Colors.white,size: 16,),
                        ],
                      ),
                    ),
                    ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(
                      "1",
                    ),
                    _buildButton("2"),
                    _buildButton("3"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 20, bottom: 30),
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
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 20, bottom: 20),
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
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 20,
                ),
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

                Padding(padding: EdgeInsets.only(bottom: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[900],
                        ),
                        child: Center(
                            child: Text(
                          "Request",
                          style: TextStyle(
                              fontFamily: 'CashMarket-BoldRounded',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        )),
                      ),
                      Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[900],
                        ),
                        child: Center(
                            child: Text(
                              "Pay",
                              style: TextStyle(
                                  fontFamily: 'CashMarket-BoldRounded',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            )),
                      ),
                    ],
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
        style: TextStyle(
            fontFamily: 'CashMarket-BoldRounded',
            fontSize: 24.0, color: Colors.white),
      ),
      onPressed: () => _onButtonPressed(buttonText),
    );
  }
}
