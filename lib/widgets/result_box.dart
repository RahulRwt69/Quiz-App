import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: background,
        content: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Result',
                style: TextStyle(color: neutral, fontSize: 22.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                child: Text(
                  '$result/$questionLength',
                  style: TextStyle(fontSize: 30.0),
                ),
                radius: 70.0,
                backgroundColor: result == questionLength / 2
                    ? Colors.yellowAccent
                    : result < questionLength / 2
                        ? incorrect
                        : correct,
              ),
              const SizedBox( height: 20.0),
              Text(
                result == questionLength / 2
                    ? 'Almost There'
                    : result < questionLength / 2
                    ? 'Try Again ?'
                    : 'Great!',
                    style: const TextStyle(color: neutral),
                 ),
              const SizedBox(height: 25.0,),
              GestureDetector(
                onTap: onPressed,
                child: const Text(
                  'Start Over',
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
