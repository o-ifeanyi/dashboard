import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'marker.dart';

class Efficiency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> showingSections() {
      return List.generate(2, (i) {
        final double radius = 5;
        switch (i) {
          case 0:
            return PieChartSectionData(
              showTitle: false,
              color: Theme.of(context).primaryColor,
              value: 70,
              radius: radius,
            );
          case 1:
            return PieChartSectionData(
              showTitle: false,
              color: Theme.of(context).accentColor,
              value: 30,
              radius: radius,
            );
          default:
            return null;
        }
      });
    }

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
                  'Efficiency',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                      pieTouchData:
                          PieTouchData(touchCallback: (pieTouchResponse) {}),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      centerSpaceRadius: 60,
                      sections: showingSections()),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$ 1,700',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text(
                          '-56%',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
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
