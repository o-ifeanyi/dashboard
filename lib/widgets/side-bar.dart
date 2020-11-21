import 'package:dashboard/components/profile_icon.dart';
import 'package:dashboard/components/transaction.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final navs = [
    {'item': 'Top Up', 'icon': Icons.account_balance_wallet_rounded},
    {'item': 'Pay', 'icon': Icons.payment_rounded},
    {'item': 'Send', 'icon': Icons.send_rounded},
    {'item': 'Profile', 'icon': Icons.arrow_downward_rounded},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Color(0xFF9C9ACB),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.clear_rounded,
                        color: Color(0xFF9C9ACB),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                ProfileIcon(
                  'images/person5.png',
                  height: 70,
                  width: 70,
                ),
                Text(
                  'Jonas Kanwald',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: navs
                      .map((e) => Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Color(0xFFE1E0F1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(
                                  e['icon'],
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(e['item'])
                            ],
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Recent Transactions',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      'TODAY',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Transaction('images/person1.png', 'Tom Holland',
                      'Payment recieved', '+\$250'),
                  Transaction(
                    'images/person2.png',
                    'Chris Jericho',
                    'Payment sent',
                    '-\$250',
                    recieved: false,
                  ),
                  Transaction('images/person3.png', 'Meghan Stallion',
                      'Payment recieved', '+\$250'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'YESTERDAY',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Transaction('images/person4.png', 'Chris Evans',
                      'Payment recieved', '+\$250'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
