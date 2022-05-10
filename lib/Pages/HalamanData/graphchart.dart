import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class KurvaData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('D\'Chart')),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Line Chart'),
              tileColor: Colors.amber[200],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  RotatedBox(quarterTurns: 3, child: Text('Quantity')),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: DChartLine(
                            lineColor: (lineData, index, id) {
                              return id == 'Line 1'
                                  ? Colors.blue
                                  : Colors.amber;
                            },
                            data: [
                              {
                                'id': 'Line 1',
                                'data': [
                                  {'domain': 1, 'measure': 3},
                                  {'domain': 2, 'measure': 3},
                                  {'domain': 3, 'measure': 4},
                                  {'domain': 4, 'measure': 6},
                                  {'domain': 5, 'measure': 0.3},
                                ],
                              },
                              {
                                'id': 'Line 2',
                                'data': [
                                  {'domain': 1, 'measure': 4},
                                  {'domain': 2, 'measure': 5},
                                  {'domain': 3, 'measure': 2},
                                  {'domain': 4, 'measure': 1},
                                  {'domain': 5, 'measure': 2.5},
                                ],
                              },
                            ],
                            includePoints: true,
                          ),
                        ),
                        Text('Day'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
