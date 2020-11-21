import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExchangeRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Exchange rates',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Spacer(),
              Text('USD'),
              SizedBox(width: 5),
              Icon(Icons.swap_horiz, color: Colors.grey, size: 15),
              SizedBox(width: 5),
              Text('IDR'),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: false,
                  drawVerticalLine: false,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22,
                    getTextStyles: (value) => const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 1:
                          return 'APR';
                        case 3:
                          return 'MAY';
                        case 5:
                          return 'JUN';
                        case 7:
                          return 'JUL';
                        case 9:
                          return 'AUG';
                      }
                      return '';
                    },
                    margin: 8,
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    getTextStyles: (value) => const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 1:
                          return '12.5';
                        case 3:
                          return '13.5';
                        case 5:
                          return '14.5';
                      }
                      return '';
                    },
                    reservedSize: 28,
                    margin: 12,
                  ),
                ),
                borderData: FlBorderData(show: false),
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 6,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 1),
                      FlSpot(3.5, 4),
                      FlSpot(5.5, 1.5),
                      FlSpot(8, 3.8),
                      FlSpot(9.5, 4),
                      FlSpot(11, 3),
                    ],
                    isCurved: true,
                    colors: [Theme.of(context).primaryColor],
                    barWidth: 3,
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
