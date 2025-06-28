import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


Map<String, String> colors = {
  'graphite': '121212',
  'red': 'ED5D2D',
  'ogange': 'F57600',
  'yellow': 'FFCA20',
  'green': '6AD559',
  'lightblue': '48BAF7',
  'blue': '7137FB',
};


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff121212),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xff121212),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      debugShowCheckedModeBanner: false, // відключення стрічки debug
      home: Scaffold(

        backgroundColor: Color(0xff121212),

        // AppBar
        appBar: AppBar(
          title: Text(
            'Famble',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 25,
              fontFamily: 'Arial',
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff121212),
        ),

        // body
        body: Column(
          children: [
            SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  CircularPercentIndicator(
                      radius: 45.0,
                      animation: true,
                      lineWidth: 10.0,
                      percent: 0.7, // 70% прогресу
                      center: Text(
                        "70%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      progressColor: Color(0xffED5D2D),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.grey.shade800,
                    ),
                  SizedBox(width: 10,),
                  CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 10.0,
                    percent: 0.98, // 98% прогресу
                    center: Text(
                      "98%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    progressColor: Color(0xffF57600),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.grey.shade800,
                  ),
                  SizedBox(width: 10,),
                  CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 10.0,
                    percent: 0.42, // 42% прогресу
                    center: Text(
                      "42%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    progressColor: Color(0xffFFCA20),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.grey.shade800,
                  ),
                  SizedBox(width: 10,),
                  CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 10.0,
                    percent: 0.65, // 65% прогресу
                    center: Text(
                      "65%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    progressColor: Color(0xff6AD559),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.grey.shade800,
                  ),
                  SizedBox(width: 10,),
                  CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 10.0,
                    percent: 0.11, // 11% прогресу
                    center: Text(
                      "11%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    progressColor: Color(0xff7137FB),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.grey.shade800,
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
/*
            Center(
              child: Icon(
                Icons.favorite,
                size: 80,
                color: Colors.white,
              ),
            )
*/
          ],
        ),

        // home
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xffFFFFFF),
          unselectedItemColor: Colors.grey,
          backgroundColor: Color(0xff121212),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.checklist),
                label: 'Challenges',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.analytics),
                label: 'Statistic',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              )
            ]
        ),
      ),
    );
  }
}
