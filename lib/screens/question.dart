import 'package:flutter/material.dart';

import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class CardSwiper extends StatefulWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  _CardSwiperState createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Swiper(
          itemBuilder: (context, index) {
            return Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'What is your question?',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the selection for option 1
                    },
                    child: Text('Option 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the selection for option 2
                    },
                    child: Text('Option 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the selection for option 3
                    },
                    child: Text('Option 3'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the selection for option 4
                    },
                    child: Text('Option 4'),
                  ),
                ],
              ),
            );
          },
          itemCount: 10, // Adjust as needed
          itemWidth: 300.0,
          itemHeight: 400.0,
          layout: SwiperLayout.TINDER,
        ),
      ),
    );
  }
}
