import 'package:get/state_manager.dart';

class DrawerNavProvider extends GetxController {
  final selectedIndex = 0.obs;

  void onSelectItem(int index) {
    print('here');
    selectedIndex.value = index;
  }
}
