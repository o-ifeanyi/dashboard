import 'package:dashboard/components/marker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BarChartGroupData> rawBarGroups;
    List<BarChartGroupData> showingBarGroups;

    BarChartGroupData makeGroupData(int x, double y1, double y2) {
      final Color leftBarColor = Theme.of(context).accentColor;
      final Color rightBarColor = Theme.of(context).primaryColor;
      final double width = 4;
      return BarChartGroupData(barsSpace: 4, x: x, barRods: [
        BarChartRodData(
          y: y1,
          colors: [leftBarColor],
          width: width,
        ),
        BarChartRodData(
          y: y2,
          colors: [rightBarColor],
          width: width,
        ),
      ]);
    }

    final barGroup1 = makeGroupData(0, 7, 13);
    final barGroup2 = makeGroupData(1, 5, 10);
    final barGroup3 = makeGroupData(2, 10, 18);
    final barGroup4 = makeGroupData(3, 10, 12);
    final barGroup5 = makeGroupData(4, 9, 14);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'History',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BarChart(
                BarChartData(
                  maxY: 20,
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                      margin: 20,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'APR';
                          case 1:
                            return 'MAY';
                          case 2:
                            return 'JUN';
                          case 3:
                            return 'JUL';
                          case 4:
                            return 'AUG';
                          default:
                            return '';
                        }
                      },
                    ),
                    leftTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                      margin: 32,
                      reservedSize: 14,
                      getTitles: (value) {
                        if (value == 0) {
                          return '\$0';
                        } else if (value == 6) {
                          return '\$500';
                        } else if (value == 12) {
                          return '\$2000';
                        } else if (value == 19) {
                          return '\$3000';
                        } else {
                          return '';
                        }
                      },
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: showingBarGroups,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Marker(Theme.of(context).primaryColor),
              SizedBox(width: 5),
              Text(
                'Income',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 15),
              Marker(Theme.of(context).accentColor),
              SizedBox(width: 5),
              Text(
                'Expense',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
