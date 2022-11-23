import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'new_box.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NewBox(
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      Text(
                        "M  U  S  I  C ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NewBox(child: Icon(Icons.menu)),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: 400,
                    height: 350,
                    child: NewBox(
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("asset/pic/pic1.jpeg")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Minions:Song",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "By Guru",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    // We wraped teh image with ClipRRect because to have a curviness of teh image
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("00:00"),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text("4:22"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewBox(
                    child: LinearPercentIndicator(
                      barRadius: Radius.circular(12),
                      progressColor: Colors.green,
                      backgroundColor: Colors.grey,
                      lineHeight: 10,
                      percent: 0.6,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 80,
                    child: Row(children: [
                      Expanded(child: NewBox(child: Icon(Icons.skip_previous))),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Expanded(
                            flex: 2,
                            child: NewBox(child: Icon(Icons.play_arrow))),
                      ),
                      Expanded(child: NewBox(child: Icon(Icons.skip_next))),
                    ]),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
