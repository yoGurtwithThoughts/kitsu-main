import 'package:flutter/material.dart';
import 'package:kitsu/pages/models/user_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

import 'package:kitsu/pages/models/user_model.dart';

class DbHelper {
  late Database? _db;

  static const String DB_Name = 'pr7.db';
  static const String Table_User = 'user';
  static const int DB_Version = 1;

  static const String G_UserID = 'user_id';
  static const String G_UserName = 'user_name';
  static const String G_Email = 'email';
  static const String G_Password = 'password';

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();

    return _db!;
  }

  initDb() async {
    io.Directory docDic = await getApplicationDocumentsDirectory();
    String path = join(docDic.path, DB_Name);
    var db = await openDatabase(path, version: DB_Version, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async {
    db.execute("CREATE TABLE $Table_User("
        " $G_UserID TEXT, "
        " $G_UserName TEXT, "
        " $G_Email TEXT, "
        " $G_Password TEXT, "
        " PRIMARY KEY($G_UserID)"
        ")");
  }

  Future<UserModel> saveDataUser({required UserModel userModel}) async {
    var dbClient = await db;
    int userId = await dbClient!.insert(Table_User, userModel.toMap());
    return userModel;
  }

  Future<int> saveData({required UserModel userModel}) async {
    var dbClient = await db;
    var res = await dbClient!.insert(Table_User, userModel.toMap());
    return res;
  }

  Future<UserModel?> getUserLogin(
      {required String userId, required String password}) async {
    var dbClient = await db;
    var userLogin = await dbClient!.rawQuery("SELECT * FROM $Table_User WHERE "
        "$G_UserID - '$userId' AND "
        "$G_Password = '$password'");

    if (userLogin.isNotEmpty) {
      return UserModel.fromMap(userLogin.first);
    }

    return null;
  }
}
