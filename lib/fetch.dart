import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final userRef = FirebaseFirestore.instance.collection('users').doc('user_id');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: userRef.snapshots(),
        builder: (context, snapshot) {
          // Check if the snapshot has data
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          // Extract the displayValue from the snapshot
          final data = snapshot.data?.data() as Map<String, dynamic>?;
          final displayValue = data?['displayValue'] ?? '0';

          // Build your widget tree using the displayValue
          return Center(child: Text('The display value is $displayValue'));
        },
      ),
    );
  }
}
