import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
class OptionCard extends StatelessWidget {
  const OptionCard({Key? key,
    required this.option,
    required this.color,
    }) : super(key: key);
  final String option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
          title: Text(
            option,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
                color: Colors.yellow[600],
            ),
          )
      ),
    );
  }
}


