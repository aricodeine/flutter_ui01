import 'package:flutter/material.dart';
import 'dart:math' show pi;

class CardBackView extends StatelessWidget {
  const CardBackView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..rotateY(pi * 1),
      origin: Offset(MediaQuery.of(context).size.width / 2, 0),
      child: SizedBox(
        width: 500,
        height: 280,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 60,
                color: Colors.black,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 200,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        const Text(
                          '339',
                          style:
                              TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 16,
                      color: Colors.black12,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 16,
                      width: 150,
                      color: Colors.black12,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 16,
                      width: 150,
                      color: Colors.black12,
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
}
