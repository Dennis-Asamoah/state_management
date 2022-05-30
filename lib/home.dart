import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hhhh/second.dart';
import 'counter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);//({Key? key, required this.title}) : super(key: key);

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final Controller c = Get.put(Controller());

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('title'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetX<Controller>(
              builder: (controller){
                return Text(controller.l,style: TextStyle(fontSize: 25),);
              },
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Obx(() => Text('Get: ${c.count}',style:Theme.of(context).textTheme.headline4)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() => Get.to(() => SecondPage()), //c.increment,//_incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

