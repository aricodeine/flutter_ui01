import 'package:flutter/material.dart';

class CardFrontView extends StatelessWidget {
  const CardFrontView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 280,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/visa.png'),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                '1234 5678 9012 3456',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(color: Colors.black12, offset: Offset(2, 1)),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Card Holder'),
                      Text(
                        'Nasty Chuckles',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Expiry'),
                      Text(
                        '10/24',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
