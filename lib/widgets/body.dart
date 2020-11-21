import 'package:dashboard/components/credit_card.dart';
import 'package:dashboard/components/efficiency.dart';
import 'package:dashboard/components/exchange_rate.dart';
import 'package:dashboard/components/history.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFDBDAF9),
              Color(0xFFE5E4EC),
            ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerLeft,
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFFE1E1FA),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Color(0xFF9C9ACB),
                      ),
                      border: InputBorder.none),
                ),
              ),
              Spacer(),
              Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications_rounded),
                    color: Color(0xFF9C9ACB),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: 9,
                    top: 7,
                    child: Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints(
                        minWidth: 6,
                        minHeight: 6,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 4,
                      ),
                    ),
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color(0xFF9C9ACB),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(flex: 5, child: CreditCard()),
                Expanded(flex: 6, child: ExchangeRate()),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(flex: 5, child: History()),
                Expanded(flex: 3, child: Efficiency()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
