import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;

Future<String> readJsonFile(String filePath) async {
  var input = await File(filePath).readAsString();
  var map = jsonDecode(input);
  return map['package_name'];
}

Future<File> changeFileNameOnly(File file, String newFileName) {
  var path = file.path;
  var lastSeparator = path.lastIndexOf(Platform.pathSeparator);
  var newPath = path.substring(0, lastSeparator + 1) + newFileName;
  return file.rename(newPath);
}

Future<String> readFileAsync(file) {
  Future<String> futureContent = file.readAsString();
  return futureContent;
}

Future<File> writeFileAsync(File file, contents) {
  return file.writeAsString(contents);
}

void main() async {
  String packageName = await readJsonFile('./build/web/version.json');
  String replaceName = "$packageName.dart.js";
  print(packageName);
  File newFileName =
      await changeFileNameOnly(File("./build/web/main.dart.js"), replaceName);
  print(newFileName.path);
  String oldString = await readFileAsync(File("./build/web/init.js"));
  print(oldString);
  String newString =
      oldString.toString().replaceAll('main.dart.js', replaceName);
  print(newString);
  await writeFileAsync(File("./build/web/init.js"), newString);
}
