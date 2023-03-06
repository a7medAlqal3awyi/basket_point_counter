import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BasketCounter extends StatefulWidget {
  const BasketCounter({Key? key}) : super(key: key);

  @override
  State<BasketCounter> createState() => _BasketCounterState();
}

class _BasketCounterState extends State<BasketCounter> {
  int teamAPoint=0;
  int teamBPoint=0;
  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Point Counter'),
        ),
      ),
      body: Column(
        children: [
          Gap(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    Gap(50),
                    Text(
                      '$teamAPoint',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 90,
                      ),
                    ),
                    Gap(40),
                    MaterialButton(
                      height: 50,
                      onPressed: () {
                        setState(() {
                          teamAPoint++;
                        });
                        print(teamAPoint);
                      },
                      child: Text(
                          'Add 1 point'
                      ),
                      color: Colors.amber,
                    ),
                    Gap(15),
                    MaterialButton(
                      height: 50,

                      onPressed: () {
                        setState(() {
                          teamAPoint+=2;
                        });
                      },
                      child: Text(
                          'Add 2 point'
                      ),
                      color: Colors.amber,
                    ),
                    Gap(15),

                    MaterialButton(
                      height: 50,

                      onPressed: () {
                        setState(() {
                          teamAPoint+=3;
                        });
                      },
                      child: Text(
                          'Add 3 point'
                      ),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              Container(
                width: 3,
                height: 430,
                color: Colors.grey.withOpacity(.2),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    Gap(50),
                    Text(
                      '$teamBPoint',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 90,
                      ),
                    ),
                    Gap(40),
                    MaterialButton(
                      height: 50,

                      onPressed: () {
                        setState(() {
                          teamBPoint++;
                        });
                      },
                      child: Text(
                          'Add 1 point'
                      ),
                      color: Colors.amber,
                    ),
                    Gap(15),

                    MaterialButton(
                      height: 50,

                      onPressed: () {
                        setState(() {
                          teamBPoint+=2;
                        });
                      },
                      child: Text(
                          'Add 2 point'
                      ),
                      color: Colors.amber,
                    ),
                    Gap(15),

                    MaterialButton(
                      height: 50,

                      onPressed: () {
                        setState(() {
                          teamBPoint+=3;
                        });
                      },
                      child: Text(
                          'Add 3 point'
                      ),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(50),

          MaterialButton(
            minWidth: 150,
            onPressed: () {
              setState(() {
                teamBPoint=0;
                teamAPoint=0;
              });
            },
            child: Text(
                'Reset'
            ),
            color: Colors.amber,
          ),


        ],
      ),
    );
  }
}
