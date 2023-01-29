import 'package:flutter/material.dart';

class RowCol extends StatefulWidget {
  const RowCol({Key? key}) : super(key: key);

  @override
  State<RowCol> createState() => _RowColState();
}

class _RowColState extends State<RowCol> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[950],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text('Row and Column'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.amber,
                  child: const Text('One'),
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.brown,
                  child: const Text('Two'),
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: const Text('Three'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    color: Colors.red,
                    child: const Text('Four'),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    color: Colors.green,
                    child: const Text('Five'),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    color: Colors.pink,
                    child: const Text('Six'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.grey,
                  child: const Text('Seven'),
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.orange,
                  child: const Text('Eight'),
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.indigo,
                  child: const Text('Nine'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
