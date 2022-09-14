import 'package:hive/hive.dart';

void ini() async {
  Hive.init("${HiveStorageBackendPreference.native}");
}

void create(String name, data) async {
  var stringBox = await Hive.openBox<String>('test1');
  stringBox.put('$name', data);
  print("Created: $name, for data: $data");
}

Future<String?> sear(String name) async {
  var stringBox = await Hive.openBox<String>('test1');
  try {
    return stringBox.get('$name').toString();
  } catch (er) {
    print("[BD]: ERROR: $er");
  }
}