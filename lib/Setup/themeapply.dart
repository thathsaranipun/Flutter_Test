
import 'package:flutter/material.dart';

class ThemeApply extends StatefulWidget {
   @override
  _ThemeApplyState createState() => _ThemeApplyState();

  static _ThemeApplyState of(BuildContext context) =>
      context.findAncestorStateOfType<_ThemeApplyState>()!;
}


class _ThemeApplyState extends State<ThemeApply> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: MyHomePage(title: 'Theme Apply'),
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose your theme:',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => ThemeApply.of(context).changeTheme(ThemeMode.light),
                    child: Text('Light')),
                ElevatedButton(
                    onPressed: () => ThemeApply.of(context).changeTheme(ThemeMode.dark),
                    child: Text('Dark')),
              ],
            ),
          ],
        ),
      ),
    );
  }

}