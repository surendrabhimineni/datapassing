import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final namecontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Enter the Name",
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: namecontroller,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  var nameentered = namecontroller.text;
                  print("Name $nameentered");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScreenWelcome(
                                guestname: nameentered,
                              )));
                },
                child: Text(
                  "Go",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenWelcome extends StatelessWidget {
  final guestname;

  ScreenWelcome({@required this.guestname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Text(
          "Welcome $guestname",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
