import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _IconMode = false;
IconData DarkIcon = Icons.nights_stay;
IconData LightIcon = Icons.wb_sunny;
ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
);
ThemeData _lightTheme =
    ThemeData(primarySwatch: Colors.amber, brightness: Brightness.light);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _IconMode ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.grey,
          title: const Text('Mode',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _IconMode = !_IconMode;
                  });
                },
                icon: Icon(_IconMode ? DarkIcon : LightIcon,size: 30))
          ],
        ),
      ),
    );
  }
}
