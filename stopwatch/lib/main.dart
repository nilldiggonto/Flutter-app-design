import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const watch = new Stopwatch()
  // final GlobalKey
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  final _chartSize = const Size(250.0, 250.0);
  Color labelColor = Colors.blue;
  Stopwatch watch = new Stopwatch();
  Timer? timer;
  String elapsedTime = '';

  updateTime(Timer timer) {
    if (watch.isRunning) {
      var milliseconds = watch.elapsedMilliseconds;
      var hundreds = (milliseconds / 10).truncate();
      int seconds = (hundreds / 100).truncate();
      int minutes = (seconds / 60).truncate();

      setState(() {
        elapsedTime = transformMilliSeconds(watch.elapsedMilliseconds);
        List<CircularStackEntry> data = _generateChartData(minutes, seconds);
        _chartKey.currentState!.updateData(data);
      });
    }
  }

  Color dialColor = Colors.blue;

  List<CircularStackEntry> _generateChartData(int min, int second) {
    labelColor = dialColor;

    List<CircularStackEntry> data = [
      new CircularStackEntry(
          [new CircularSegmentEntry(second.toDouble(), dialColor)])
    ];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    // TextStyle _labelStyle =
    // Theme.of(context).textTheme.merge(TextStyle(color: labelColor));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('StopWatch'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
                child: AnimatedCircularChart(
              key: _chartKey,
              size: _chartSize,
              initialChartData: _generateChartData(0, 0), //,

              chartType: CircularChartType.Radial,
              edgeStyle: SegmentEdgeStyle.round,
              percentageValues: true,
              holeLabel: elapsedTime,
              labelStyle: new TextStyle(
                color: Colors.blueGrey[600],
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            )),
            // Text(
            //   elapsedTime,
            //   style: TextStyle(fontSize: 25.0),
            // ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.teal,
                  onPressed: () {
                    startWatch();
                  },
                  child: Icon(Icons.play_arrow),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    Stoptimewatch();
                  },
                  child: Icon(Icons.stop),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    resetWatch();
                  },
                  child: Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  startWatch() {
    watch.start();
    timer = new Timer.periodic(Duration(milliseconds: 100), updateTime);
    // setTime();
  }

  Stoptimewatch() {
    watch.stop();
    setTime();
  }

  resetWatch() {
    watch.reset();
    setTime();
  }

  setTime() {
    var timeSoFar = watch.elapsedMilliseconds;
    setState(() {
      elapsedTime = transformMilliSeconds(timeSoFar);
    });
  }

  transformMilliSeconds(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minuteStr = (minutes % 60).toString().padLeft(2, '0');
    String secondStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredStr = (hundreds % 100).toString().padLeft(2, '0');

    return "$minuteStr:$secondStr:$hundredStr";
  }
}
