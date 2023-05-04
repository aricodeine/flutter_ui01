import 'package:flutter/material.dart';
import 'package:card_app/widgets/card_back_view.dart';
import 'package:card_app/widgets/card_front_view.dart';
import 'dart:math' show pi;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _rotationFactor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cards :)'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Transform(
            transform: Matrix4.identity()..rotateY(_rotationFactor * pi),
            origin: Offset(MediaQuery.of(context).size.width / 2, 0),
            child: _rotationFactor < 0.5 ? const CardFrontView() : const CardBackView(),
          ),
          Slider(
              value: _rotationFactor,
              onChanged: (value) {
                setState(() {
                  _rotationFactor = value;
                });
              }),
        ],
      ),
    );
  }
}
