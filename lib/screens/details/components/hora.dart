import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';

class DayNight extends StatefulWidget {
  static String routeName = "/hora";

  const DayNight({Key? key}) : super(key: key);

  @override
  State<DayNight> createState() => _DayNightState();
}

class _DayNightState extends State<DayNight> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DayNight",
      theme: ThemeData(primaryColor: Color.fromARGB(255, 4, 60, 127)),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  void onTimeChanged(TimeOfDay time) {
    setState(() {
      _timeOfDay = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick an hour"),
        backgroundColor: Color.fromARGB(255, 4, 60, 127),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Available Hours ",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 60, 127)),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Image.asset(
                  'assets/horas.png',
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                _timeOfDay.format(
                  context,
                ),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      showPicker(
                        context: context,
                        value: _timeOfDay,
                        onChange: onTimeChanged,
                        minuteInterval: MinuteInterval.FIVE,
                        is24HrFormat: false,
                      ),
                    );
                  },
                  child: const Text(
                    "Pick Time ",
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 4, 60, 127)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
