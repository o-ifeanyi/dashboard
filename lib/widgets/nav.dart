import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  final navs = [
    {'item': 'Dashboard', 'icon': Icons.home_rounded, 'isActive': true},
    {
      'item': 'Wallet',
      'icon': Icons.account_balance_wallet_rounded,
      'isActive': false
    },
    {'item': 'Transaction', 'icon': Icons.bar_chart_rounded, 'isActive': false},
    {'item': 'Profile', 'icon': Icons.person, 'isActive': false},
    {'item': 'Payment', 'icon': Icons.payment_rounded, 'isActive': false},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Center(
                      child: Icon(
                    Icons.bar_chart,
                    color: Theme.of(context).primaryColor,
                  )),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'mooney',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ...navs
              .map(
                (e) => Row(
                  children: [
                    Container(
                      height: 35,
                      width: 5,
                      decoration: BoxDecoration(
                        color: e['isActive']
                            ? Theme.of(context).primaryColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                    ),
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      textColor: e['isActive']
                          ? Theme.of(context).primaryColor
                          : Color(0xFF9C9ACB),
                      icon: Icon(
                        e['icon'],
                        color: e['isActive']
                            ? Theme.of(context).primaryColor
                            : Color(0xFF9C9ACB),
                        // size: 18,
                      ),
                      label: Text(e['item']),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
              .toList(),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE2E1F1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: Image.asset('images/anual_graph.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Annual Report',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Annualy detailed report',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Download',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
