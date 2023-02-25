import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      decoration: BoxDecoration(
        color: neutral,
        borderRadius: BorderRadius.circular(18.0)
      ),
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text('Next Question',
       textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 16.0),
      )

    );
  }
}
