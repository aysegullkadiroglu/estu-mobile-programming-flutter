import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_3/platform_alert.dart';

class StopWatch extends StatefulWidget {
  static const route = '/stopwatch';

  final String? name;
  final String? email;

  const StopWatch({Key? key, this.name, this.email})
      : super(key: key);

  @override
  State createState() => StopWatchState();
}

class StopWatchState extends State<StopWatch> {
  int milliseconds = 0;
  Timer? timer;
  bool isTicking = true;
  final laps = <int>[];

  /*
  @override
  void initState() {
    super.initState();

    seconds = 0;
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
  }
  */

  void _onTick(Timer timer) {
    setState(() {
      milliseconds += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    String name = (ModalRoute.of(context)?.settings.arguments ?? '') as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: _buildCounter(context)),
          Expanded(child: _buildLapDisplay()),
        ],
      ),
    );
  }

  Widget _buildCounter(BuildContext context) {
    return Container(
      color: Theme
          .of(context)
          .primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Lap ${laps.length + 1}',
            style: Theme
                .of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.white),
          ),
          Text(
            _secondsText(milliseconds),
            style: Theme
                .of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white),
          ),
          SizedBox(height: 20),
          _buildControls(),
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          style: ButtonStyle(
            //overlayColor: getColor(Colors.white, Colors.teal),
            foregroundColor: getColor(Colors.blue, Colors.white),
            backgroundColor: getColor(Colors.white, Colors.blue),
          ),
          child: Text('Start'),
          onPressed: isTicking ? null : _startTimer,
        ),
        SizedBox(width: 20),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty
                .all<Color>(Colors.yellow),
          ),
          child: Text('Lap'),
          onPressed: isTicking ? _lap : null,
        ),
        SizedBox(width: 20),
        ElevatedButton(
          style: ButtonStyle(
            foregroundColor: getColor(Colors.white, Colors.red),
            backgroundColor: getColor(Colors.red, Colors.white),
          ),
          child: Text('Stop'),
          onPressed: isTicking ? _stopTimer : null,
        ),
      ],
    );
  }

  String _secondsText(int milliseconds) {
    final seconds = milliseconds / 1000;
    return '$seconds seconds';
  }

  Widget _buildLapDisplay() {
    return ListView(
      children: [
        for(int milliseconds in laps)
          ListTile(
            title: Text(_secondsText(milliseconds)),
          )
      ],
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _lap() {
    setState(() {
      laps.add(milliseconds);
      milliseconds = 0;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(milliseconds: 100), _onTick);

    setState(() {
      milliseconds = 0;
      isTicking = true;
      laps.clear();
    });
  }

  void _stopTimer() {
    timer?.cancel();

    setState(() {
      isTicking = false;
    });

    final totalRuntime = laps.fold(milliseconds, (total, lap) => total + lap);
    final alert = PlatformAlert(
        title: 'Run Completed',
        message: 'Total Run Time is ${_secondsText(totalRuntime)}.',
    );
    alert.show(context);
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      }
      else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }
}