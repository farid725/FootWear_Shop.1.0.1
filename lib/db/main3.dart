import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'main2.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper intance = DatabaseHelper._instance();

  static Database? _db;

  DatabaseHelper._instance();

  final String tableName = "tableTodo";
  final String colId = 'id';
  final String colProductName = 'productName';
  final String colPrice = 'price';
  final String colExplane = 'explane';

  Future<Database?> get db async {
    return _db ?? await _initDB();
  }

  Future<Database?> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = documentsDirectory.path + "todo.db";

    _db = await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          db.execute("CREATE TABLE $tableName ("
              "$colId INTEGER PRIMARY KEY,"
              "$colProductName TEXT,"
              "$colPrice TEXT,"
              "$colExplane TEXT"
              ")");
        });
    return _db;
  }

  Future<Model> insert(Model model) async {
    final data = await db;
    model.id = await data?.insert(tableName, model.toMap());
    return model;
  }

  Future<List<Map<String, Object?>>?> getTaskMap() async {
    final data = await db;
    final List<Map<String, Object?>>? result = await data?.query(tableName);
    return result;
  }

  Future<List<Model>> getTasks() async {
    final List<Map<String, Object?>>? taskMap = await getTaskMap();
    final List<Model> models = [];
    taskMap?.forEach((element) {
      models.add(Model.fromMap(element));
    });
    return models;
  }

  Future<int?> update(Model model) async {
    final data = await db;
    return await data?.update(tableName, model.toMap(),
        where: "$colId = ?", whereArgs: [model.id]);
  }

  Future<int?> delete(int id) async {
    final data = await db;
    return await data?.delete(
      tableName,
      where: '$colId = ?',
      whereArgs: [id],
    );
  }
}
