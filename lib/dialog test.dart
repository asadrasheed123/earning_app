import 'package:flutter/material.dart';
class dialog extends StatelessWidget {
  const dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  title: Center(
                    child: Text(
                      'Please Confirm',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(child: Text('Do you agree to the terms?')),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: Text('Yes'),
                            onPressed: () {
                              // Do something when user clicks Yes
                              Navigator.of(context).pop();
                            },
                          ),
                          Container(
                            height: 50.0,
                            width: 1.0,
                            color: Colors.black.withOpacity(0.1),

                          ),
                          TextButton(
                            child: Text('No'),
                            onPressed: () {
                              // Do something when user clicks No
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text('Click me'),
        )



      )


    );
  }
}
