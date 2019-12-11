import 'package:path_provider/path_provider.dart';

localPath() async {
    try {
        var tempDir = await getTemporaryDirectory();
        String tempPath = tempDir.path;

        var appDocDir = await getApplicationDocumentsDirectory();
        String appDocPath = appDocDir.path;

        print('临时目录: ' + tempPath);
        print('文档目录: ' + appDocPath);
    }
    catch(err) {
        print(err);
    }
}

