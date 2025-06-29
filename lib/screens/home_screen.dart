import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SizedBox(width: 10),
              _ProgressCircle(percent: 0.7, color: Color(0xffED5D2D), label: "70%"),
              SizedBox(width: 10),
              _ProgressCircle(percent: 0.98, color: Color(0xffF57600), label: "98%"),
              SizedBox(width: 10),
              _ProgressCircle(percent: 0.42, color: Color(0xffFFCA20), label: "42%"),
              SizedBox(width: 10),
              _ProgressCircle(percent: 0.65, color: Color(0xff6AD559), label: "65%"),
              SizedBox(width: 10),
              _ProgressCircle(percent: 0.11, color: Color(0xff7137FB), label: "11%"),
              SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProgressCircle extends StatelessWidget {
  final double percent;
  final Color color;
  final String label;

  const _ProgressCircle({
    required this.percent,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 45.0,
      lineWidth: 10.0,
      percent: percent,
      center: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      progressColor: color,
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Colors.grey.shade800,
    );
  }
}
