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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
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
  String Number="";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _addNumber(String newNumber){
    setState(() {
      Number=Number+newNumber;
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
           Container(
             height: 30,
             width: 180,
             child: Text(Number),
             decoration: BoxDecoration(
               border: Border.all(
                   color: Colors.black,
                 width: 1
               )
             ),
           ),
            SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed:(){
                      _addNumber("1");
                    },
                    child: Text("1")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("2");
                    },
                    child: Text("2")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("3");
                    },
                    child: Text("3")
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                ElevatedButton(
                    onPressed:(){
                      _addNumber("4");
                    },
                    child: Text("4")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("5");
                    },
                    child: Text("5")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("6");
                    },
                    child: Text("6")
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                ElevatedButton(
                    onPressed:(){
                      _addNumber("7");
                    },
                    child: Text("7")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("8");
                    },
                    child: Text("8")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("9");
                    },
                    child: Text("9")
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                ElevatedButton(
                    onPressed:(){
                      _addNumber("*");
                    },
                    child: Text("*")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("0");
                    },
                    child: Text("0")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed:(){
                      _addNumber("#");
                    },
                    child: Text("#")
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip:'Call',
        child: const Icon(Icons.add_call),
      ),
    );
  }
}

