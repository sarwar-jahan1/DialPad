import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Dial Pad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

        Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed:(){},
                child: Text("1")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("2")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("3")
            ),
       ],
        ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

            ElevatedButton(
                onPressed:(){},
                child: Text("4")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("5")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("6")
            ),
          ],
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

            ElevatedButton(
                onPressed:(){},
                child: Text("7")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("8")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("9")
            ),
            ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

            ElevatedButton(
                onPressed:(){},
                child: Text("*")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("0")
            ),
            ElevatedButton(
                onPressed:(){},
                child: Text("#")
            ),
          ],
      ),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip:'Call Me please',
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
