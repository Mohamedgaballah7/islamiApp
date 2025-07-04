import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsKeys {
  static const String mostRecentlyKey = 'most_recently';
}

void setNewMostRecentlySuraList(int newSuraIndex) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentIndicesList =
      prefs.getStringList(SharedPrefsKeys.mostRecentlyKey) ?? [];
  if (mostRecentIndicesList.contains('$newSuraIndex')) {
    mostRecentIndicesList.remove('$newSuraIndex');
    mostRecentIndicesList.insert(0, '$newSuraIndex');
  } else {
    mostRecentIndicesList.insert(0, '$newSuraIndex');
  }
  if (mostRecentIndicesList.length > 5) {
    mostRecentIndicesList.removeLast();
  }

  await prefs.setStringList(
    SharedPrefsKeys.mostRecentlyKey,
    mostRecentIndicesList,
  );
}
