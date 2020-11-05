import 'package:flutter/cupertino.dart';
import '../components/businessOppurtunities.dart';
import '../components/facilities.dart';
import '../components/materialResources.dart';

class TabPageProvider with ChangeNotifier {
  //Text() to be replaced with screens after developing.
  List<Widget> _pages = [
    Text('About Us'),
    Facilities(),
    MaterialResources(),
    Body(),
  ];

  int _index = 0;

  void setIndex(int index) {
    _index = index;
    //print(index);
    notifyListeners();
  }

  int get index {
    return _index;
  }

  Widget get openPage {
    return _pages[_index];
  }
}