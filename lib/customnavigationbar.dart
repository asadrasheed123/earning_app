import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'cashCard.dart';
import 'dicover.dart';
import 'dollar.dart';
import 'home_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  String _displayValue = '5K';
  List<Widget> pages = const [    Home_Page(),    CashCard(),    Dollar(),    discover(),    Text("?"),  ];
  final userRef = FirebaseFirestore.instance.collection('users').doc('user_id');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.black,
          backgroundColor: Colors.black,
          height: 50,
        ),
        child: NavigationBar(
          backgroundColor: Colors.black,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
              if (_currentIndex == 0) {


                _displayValue = '500.00'; // Update the value here
              } else {
                _displayValue = '';
              }
            });
          },
          destinations: [
            NavigationDestination(
              icon:
          StreamBuilder<DocumentSnapshot>(
          stream: userRef.snapshots(),
      builder: (context, snapshot) {
        // Check if the snapshot has data
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        // Extract the displayValue from the snapshot
        // Extract the displayValue from the snapshot
        final data = snapshot.data?.data() as Map<String, dynamic>?;
        final displayValue = data?['displayValue'] ?? '0';

// Format the displayValue to show in thousands with a "k" suffix
        String formattedDisplayValue = displayValue;
        if (displayValue != null) {
          double? value = double.tryParse(displayValue);
          if (value != null) {
            if (value >= 1000) {
              value = value / 1000;
              if (value.toStringAsFixed(1).endsWith('0')) {
                formattedDisplayValue = '${value.toStringAsFixed(0)}k';
              } else {
                formattedDisplayValue = '${value.toStringAsFixed(1)}k';
              }
            } else {
              formattedDisplayValue = displayValue;
            }
          }
        }

// Build your widget tree using the formattedDisplayValue
        return Center(
          child: Text(
            '\$$formattedDisplayValue',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'cash',
              fontSize: 18,
            ),
          ),
        );

      },
    ),

    label: '',
            ),
            NavigationDestination(
              icon: SizedBox(
                width: 25,
                height: 25,
                child: Image.asset('images/222.png'),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: SizedBox(
                width: 25,
                height: 25,
                child: Image.asset('images/333.png'),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: SizedBox(
                width: 25,
                height: 25,
                child: Image.asset('images/444.png'),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: SizedBox(
                width: 60,
                height: 60,
                child: Image.asset('images/555.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}


