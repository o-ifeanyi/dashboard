import 'package:dashboard/components/profile_icon.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String image;
  final String title;
  final String subtitlte;
  final String price;
  final bool recieved;

  Transaction(this.image, this.title, this.subtitlte, this.price,
      {this.recieved = true});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfileIcon(image),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
      ),
      subtitle: Text(
        subtitlte,
        style: TextStyle(
          fontWeight: FontWeight.w200,
          color: Colors.grey,
          fontSize: 10,
        ),
      ),
      trailing: Text(
        price,
        style: TextStyle(
          color: recieved ? Theme.of(context).primaryColor : Colors.deepOrange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
