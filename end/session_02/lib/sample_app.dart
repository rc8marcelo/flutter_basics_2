import 'package:flutter/material.dart';

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return home(context);
        },
        '/about': (BuildContext context) {
          return aboutPage();
        }
      },
      title: "",
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.yellow,
      ),
    );
  }

  Widget aboutPage() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Route'),
      ),
    );
  }

  Widget home(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Route'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home Page'),
            RaisedButton(
                child: Text('move'),
                onPressed: () => Navigator.pushNamed(context, '/about')),
          ],
        ),
      ),
    );
  }
}
