// 读取 json 数据
import 'dart:convert';

import 'localFile.dart';
import 'localPath.dart';

readJSON() async {
    try {
        final file = await localFile(await localPath());
        String str = await file.readAsString();
        return json.decode(str);
    }
    catch (err) {
        print(err);
    }
}

// 写入 json 数据
writeJSON(obj) async {
    try {
        final file = await localFile(await localPath());
        return file.writeAsString(json.encode(obj));
    }
    catch (err) {
        print(err);
    }
}