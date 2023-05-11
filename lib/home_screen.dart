import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:earning_app/addmoney.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'cashout.dart';
import 'loadingscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home_Page extends StatefulWidget {


  const Home_Page({Key? key,    }) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  double maxSliderValue = 1;
  int height = 180;


  final userRef = FirebaseFirestore.instance.collection('users').doc('user_id');




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          "Money",
          style: TextStyle(
              fontFamily: 'CashMarket-BoldRounded',
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle_outlined,size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 190,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 15,right: 15,top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cash Balance",
                              style: TextStyle(
                                  fontFamily: 'CashMarket-BoldRounded',

                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                            Text(
                              "Account & Routing  >",
                              style: TextStyle(
                                  fontFamily: 'CashMarket-BoldRounded',
                                  
                                  color: Colors.grey,
                                  fontSize: 14),
                            ),


                          ],
                        ),

                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: Row(
                                children: [
                                  Text("\$", style: TextStyle(
                                  fontFamily: 'cash',
                                  fontSize: 32,
                                  color: Colors.white,),
                              ),


                                  StreamBuilder<DocumentSnapshot>(
                                    stream: userRef.snapshots(),
                                    builder: (context, snapshot) {
                                      // Check if the snapshot has data
                                      if (!snapshot.hasData) {
                                        return Center(child: CircularProgressIndicator());
                                      }

                                      // Extract the displayValue from the snapshot
                                      final data = snapshot.data?.data() as Map<String, dynamic>?;
                                      final displayValue = data?['displayValue'] ?? '0';
                                      final formattedDisplayValue = displayValue.replaceAllMapped(
                                        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                            (Match match) => '${match.group(1)},',
                                      ) ;



                                      // Build your widget tree using the displayValue
                                      return Center(
                                        child: Text(
                                          '$formattedDisplayValue',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'cash',
                                            fontSize: 30,
                                          ),
                                        ),
                                      );
                                    },
                                  ),

                                ],
                              ),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
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
                                      height: 1000,
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
                                            Row(
                                              children: [
                                                SizedBox(width: 150,),
                                                Container( color: Colors.grey,height: 2,width: 25,),
                                              ],
                                            ),
                                            SizedBox(height: 50,),
                                            Text(
                                              "Add Cash",
                                              style: TextStyle(
                                                  fontFamily: 'CashMarket-BoldRounded',

                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 80,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  height: 60,
                                                  width: 85,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    color: Colors.grey[800],
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "\$10",
                                                    style: TextStyle(
                                                        fontFamily: 'CashMarket-BoldRounded',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                    ),
                                                  )),
                                                ),
                                                Container(
                                                  height: 60,
                                                  width: 85,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    color: Colors.grey[800],
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "\$25",
                                                    style: TextStyle(
                                                        fontFamily: 'CashMarket-BoldRounded',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                    ),
                                                  )),
                                                ),
                                                Container(
                                                  height: 60,
                                                  width: 85,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    color: Colors.grey[800],
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "\$50",
                                                    style: TextStyle(
                                                        fontFamily: 'CashMarket-BoldRounded',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  height: 60,
                                                  width: 85,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    color: Colors.grey[800],
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "\$100",
                                                    style: TextStyle(
                                                        fontFamily: 'CashMarket-BoldRounded',
                                                        color: Colors.white,
                                                        fontSize: 16),
                                                  )),
                                                ),
                                                Container(
                                                  height: 60,
                                                  width: 85,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    color: Colors.grey[800],
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "\$200",
                                                    style: TextStyle(
                                                        fontFamily: 'CashMarket-BoldRounded',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                       ),
                                                  )),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                AddMoney()));
                                                  },
                                                  child: Container(
                                                    height: 60,
                                                    width: 85,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color: Colors.grey[800],
                                                    ),
                                                    child: Center(
                                                        child: Text(
                                                      "...",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          ),
                                                    )),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 40,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                color:  Color(0xFF05BB44)


                                              ),
                                              child: Center(
                                                  child: Text(
                                                "Add",
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
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey[800]),
                                child: Center(
                                    child: Text(
                                  "Add Cash",
                                  style: TextStyle(
                                      fontFamily: 'CashMarket-BoldRounded',
                                      color: Colors.white, fontSize: 15),
                                )),
                              ),
                            ),
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Color(0xFF232426),
                                    isScrollControlled: true,
                                    useSafeArea: true ,

                                    context: context,
                                    shape: const RoundedRectangleBorder(
                                      // <-- SEE HERE
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(40),
                                      ),
                                    ),
                                    builder: (BuildContext context) {
                                      return Container(height: MediaQuery.of(context).size.height * 0.65,
                                        child: StatefulBuilder(
                                          builder: (BuildContext context,
                                              StateSetter setState) {
                                            return Center(
                                              child: Container(
                                                height: 500,
                                                padding: EdgeInsets.only(
                                                  bottom: MediaQuery.of(context).viewInsets.bottom,
                                                ),

                                                child: SingleChildScrollView(
                                                  child: Column(mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      SizedBox(height: 10,),
                                                      Container(height: 3,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                                        color: Colors.grey,
                                                      ),),
                                                      SizedBox(height: 60,),

                                                      Text(
                                                        "Cash Out",
                                                        style: TextStyle(
                                                            fontFamily: 'cash',
                                                            fontSize: 18,
                                                            color: Colors.white),
                                                      ),
                                                      SizedBox(height: 10,),

                                                      StreamBuilder<DocumentSnapshot>(
                                                        stream: userRef.snapshots(),
                                                        builder: (context, snapshot) {
                                                          // Check if the snapshot has data
                                                          if (!snapshot.hasData) {
                                                            return Center(child: CircularProgressIndicator());
                                                          }

                                                          // Extract the displayValue from the snapshot
                                                          final data = snapshot.data?.data() as Map<String, dynamic>?;
                                                          final displayValue = data?['displayValue'] ?? '0';
                                                          final formattedValue1 = displayValue.replaceAllMapped(
                                                            RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                                (Match match) => '${match.group(1)},',
                                                          ) + "0";


                                                          // Build your widget tree using the displayValue
                                                          return Center(child: Text('\$$formattedValue1 AVAILABLE',style: TextStyle(color: Colors.white.withOpacity(0.5)
                                                              ,   fontFamily: 'cashreg',fontSize: 12),

                                                          ),
                                                          );
                                                        },
                                                      ),
                                                      SizedBox(height: 60,),


                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .baseline,
                                                        textBaseline:
                                                            TextBaseline.alphabetic,
                                                        children: <Widget>[
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontFamily: 'cash',
                                                                fontSize: 70,
                                                                color:  Color(0xFF05BB44)),
                                                          ),
                                                          Text(
                                                            height.toString().replaceAllMapped(
                                                              RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                                  (Match match) => '${match[1]},',),
                                                            style: TextStyle(
                                                                fontSize: 70.0,
                                                                fontFamily: 'cash',

                                                                color:  Color(0xFF05BB44)),
                                                          ),
                                                        ],
                                                      ),

SizedBox(height: 50,),


// Fetch the displayValue from Firestore using a StreamBuilder
                                              StreamBuilder<DocumentSnapshot>(
                                              stream: userRef.snapshots(),
                                              builder: (context, snapshot) {
                                                  // Check if the snapshot has data
                                                  if (!snapshot.hasData) {
                                                    return Center(child: CircularProgressIndicator());
                                                  }

                                                  // Extract the displayValue from the snapshot and convert it to a double
                                                  final data = snapshot.data?.data() as Map<String, dynamic>?;
                                                  final displayValue = double.parse(data?['displayValue'] ?? '0');

                                                  // Set the maxSliderValue to the fetched displayValue
                                                  maxSliderValue = displayValue;



                                                  // Build your widget tree using the maxSliderValue
                                                  return Padding(
                                                    padding: const EdgeInsets.only(left: 22,right: 22),
                                                    child: SliderTheme(data: SliderTheme.of(context).copyWith(
                                                      // Set the height of the Slider
                                                      trackHeight: 2.0,
                                                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                                                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                                                    ),
                                                      child: Slider(
                                                        value: height.toDouble(),
                                                        min: 1,
                                                        max: maxSliderValue,
                                                        activeColor: Colors.green,
                                                        thumbColor: Colors.white,
                                                        inactiveColor: Colors.white,
                                                        onChanged: (double value) {
                                                          setState(() {
                                                            height = value.round();
                                                            print("my value is ${height}");
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  );
                                              },
                                            ),
                                            SizedBox(height: 45,),



                                                   GestureDetector(
                                                     onTap: () async {
                                                       showDialog(
                                                         context: context,
                                                         barrierDismissible: false,
                                                         builder: (BuildContext context) {
                                                           return LoadingScreen();
                                                         },
                                                       );

                                                       await Future.delayed(Duration(milliseconds: 2000));
                                                       final data = await userRef.get();
                                                       final displayValue = double.parse(data.data()?['displayValue'] ?? '0');
                                                       final newValue = displayValue - height.toDouble();
                                                       await userRef.update({'displayValue': newValue.toString()});


                                                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CashOut(height)));

                                                     },
                                                    
                                                        child: Container(

                                                            height: 45,
                                                            width: 320,
                                                            decoration: BoxDecoration(
                                                              color:  Color(0xFF05BB44),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(20),
                                                            ),
                                                            child: Center(
                                                                child: Text(
                                                              "Cash Out",
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight.bold,
                                                                  color:
                                                                      Colors.white),
                                                            )),

                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    });
                              },

                              ////////main cashout button
                              child: Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey[800]),
                                child: Center(
                                    child: Text(
                                  "Cash Out",
                                  style: TextStyle(
                                      fontFamily: 'CashMarket-BoldRounded',
                                      color: Colors.white, fontSize: 15),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Image.asset('images/img.png'),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                width: 350,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Text(
                      "More ways to add money",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
SizedBox(height: 10,),

                    ListTile(title: Text("Paper Money",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      contentPadding: EdgeInsets.only(right: 2),
                      subtitle: Text("deposit at nearby location",style: TextStyle(color: Colors.grey.withOpacity(0.3)),),
                      trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey.withOpacity(0.7),),
                      leading: Container(
                          decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),
                          child: Image.asset('images/paper.png',width: 40,height: 40,)),
                    ),
                    ListTile(title: Text("Direct Deposit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      contentPadding: EdgeInsets.only(right: 2),
                    subtitle: Text("Get paid upto 2 days faster",style: TextStyle(color: Colors.grey.withOpacity(0.3)),),
                      trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey.withOpacity(0.7),),
                      leading: Container(decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),
                          child: Image.asset('images/direct.png',width: 40,height: 40,)),
                    ),
                    SizedBox(height: 10,),
                    ListTile(title: Text("Bank Transfers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      contentPadding: EdgeInsets.only(right: 5),
                      subtitle: Text("Send from another Account",style: TextStyle(color: Colors.grey.withOpacity(0.3)),),
                      trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey.withOpacity(0.7),),
                      leading: Container(decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('images/bank.png',width: 40,height: 40,)),
                    ),
                    SizedBox(height: 10,),
                    ListTile(title: Text("Recurring Deposits",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      contentPadding: EdgeInsets.only(right: 5),
                      subtitle: Text("Send from another Account",style: TextStyle(color: Colors.grey.withOpacity(0.3)),),
                      trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey.withOpacity(0.7),),
                      leading: Container(decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),
                          child: Image.asset('images/recurring.png',width: 40,height: 40,)),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {

        return alert;
      },
    );
  }
}
