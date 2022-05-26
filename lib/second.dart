import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hhhh/home.dart';
import 'counter.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Controller c = Get.find();
  //final Controller c = Controller();

  void koo()
  {
    print (45);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('page2')
      ),
        body: Center(
          child: Column(
            children:  <Widget> [ Text('data'),
              Obx(() => Text('${c.count}')),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: const Icon(
        Icons.add
      ),
      ),


    );
  }
}
