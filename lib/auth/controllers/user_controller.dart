import 'package:get/get.dart';

class MyController extends GetxController {



  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}