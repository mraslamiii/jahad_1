import 'package:get/get.dart';

class CounterPageController extends GetxController{
  RxInt count = 0.obs;

  increment(){
    count ++ ;
  }
}