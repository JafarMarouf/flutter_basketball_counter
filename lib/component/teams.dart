import 'package:basketball_counter_app/component/elevation_button.dart';
import 'package:flutter/material.dart';

class Teams extends StatelessWidget {
  final String teamName;
  final int counter;
  final void Function()? firstFunction;
  final void Function()? secondFunction;
  final void Function()? thirdFunction;

  const Teams({
    super.key,
    required this.teamName,
    required this.counter,
    required this.firstFunction,
    required this.secondFunction,
    required this.thirdFunction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(teamName,style: const TextStyle(fontSize: 34,color: Colors.white,),),
          Text('$counter', style: const TextStyle(fontSize: 120,color: Colors.white,),),
          CustomeButton(functionName: 'Add 1 Point', onPressed: firstFunction),
          CustomeButton(functionName: 'Add 2 Point', onPressed: secondFunction),
          CustomeButton(functionName: 'Add 3 Point', onPressed: thirdFunction),
        ],
      ),
    );
  }
}
