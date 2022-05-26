import 'package:get/get.dart';

class Controller extends GetxController{
  var count = 0.obs;
  var k = [12] ;
  //var l = k.length;
  // String get x {
  //   return k.length.toString();
  // }


  //increment () => count++ ;
  void increment()
  {
     count++; //= x;
  }

  void  addItem()
  {
    k.add(89);
  }

}