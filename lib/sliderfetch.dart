import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  int? _displayValue;
  double _sliderValue = 1.1;

  @override
  void initState() {
    super.initState();
    _fetchDisplayValue();
  }

  void _fetchDisplayValue() {
    FirebaseFirestore.instance
        .collection('users')
        .doc('user_id')
        .snapshots()
        .listen((snapshot) {
      if (snapshot.exists) {
        final data = snapshot.data();
        final displayValue = data?['displayValue'] ?? '0';
        setState(() {
          _displayValue = int.tryParse(displayValue);
          _sliderValue = _displayValue?.toDouble() ?? 0;
        });
      }
    });
  }



  void _subtractFromDisplayValue() {
    FirebaseFirestore.instance.collection('users').doc('user_id').update({
      'displayValue': _displayValue! - _sliderValue.toInt(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Page'),
      ),
      body: Center(
        child: _displayValue == null
            ? const CircularProgressIndicator()
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Maximum Slider Value: $_displayValue',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Selected Value: $_sliderValue',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Slider(
              value: _sliderValue,
              min: 100,
              max: _displayValue!.toDouble(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _subtractFromDisplayValue,
              child: const Text('Subtract from Display Value'),
            ),
          ],
        ),
      ),
    );
  }
}
