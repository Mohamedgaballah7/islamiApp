import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/shared_preference.dart';

class MostRecentlyProvider extends ChangeNotifier {
  List<int> mostRecentlyList = [];

  void getNewMostRecentlySuraList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecentIndicesListAsString =
        prefs.getStringList(SharedPrefsKeys.mostRecentlyKey) ?? [];
    mostRecentlyList = mostRecentIndicesListAsString
        .map((e) => int.parse(e))
        .toList();
    notifyListeners();
  }
}
