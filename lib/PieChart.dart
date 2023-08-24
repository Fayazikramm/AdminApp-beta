import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PichartView extends StatelessWidget {
  const PichartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Construction Company Projects',
      home: PieChartPage(),
    );
  }
}

class PieChartPage extends StatelessWidget {
  const PieChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects Status'),
        backgroundColor: const Color.fromARGB(255, 71, 160, 74),
      ),
      body: Center(
        child: PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(
                title: 'Completed',
                radius: 60,
                value: 30,
                color: Colors.green,
              ),
              PieChartSectionData(
                title: 'Ongoing',
                radius: 60,
                value: 40,
                color: Colors.blue,
              ),
              PieChartSectionData(
                title: 'Tender Rejected',
                radius: 60,

                value: 10, // Replace with actual data
                color: Colors.red,
              ),
              PieChartSectionData(
                title: 'UpComing',
                radius: 60,

                value: 20, // Replace with actual data
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
