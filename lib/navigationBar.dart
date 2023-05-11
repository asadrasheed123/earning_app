import 'package:earning_app/cashCard.dart';
import 'package:earning_app/dicover.dart';
import 'package:earning_app/home_screen.dart';
import 'package:flutter/material.dart';

import 'dollar.dart';
// import 'package:get/get_utils/src/extensions/internacionalization.dart';


const TextStyle _textStyle = TextStyle(
  fontSize: 38,
  fontFamily: 'CashMarket-BoldRounded',

  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key, }) : super(key: key);


  @override
  State<MaterialYou> createState() => _MaterialYouState();
}
class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Home_Page(),
    CashCard(),
    Dollar(),
    discover(),
    Text("?"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
        body: Center(
          child: pages[_currentIndex],

        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
             indicatorColor: Colors.black,
              backgroundColor: Colors.black,
           height: 50

          ),


          child:   NavigationBar(

backgroundColor: Colors.black,

            selectedIndex: _currentIndex,

            onDestinationSelected: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            destinations:  [
              NavigationDestination(
                icon: SizedBox( width: 20,height: 20,child: Image.asset('images/111.png')),
                label: 'asad',

              ),
              NavigationDestination(

                icon: SizedBox( width: 20,height: 20,child: Image.asset('images/222.png')),
                label: '',

              ),
              NavigationDestination(
                icon: SizedBox(width: 20,height: 20,child: Image.asset('images/333.png')),
                label: '',
              ),
              NavigationDestination(
                icon: SizedBox(width: 20,height: 20,child: Image.asset('images/444.png')),
                label: '',
              ),
              NavigationDestination(
                icon: SizedBox(width: 50,height: 50,child: Image.asset('images/555.png')),

                label: '',
              ),


            ],


          ),
        ));
  }
}