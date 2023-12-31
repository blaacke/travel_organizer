import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:travel_organizer/src/core/utils/database/create_db.dart';
import 'package:travel_organizer/src/core/utils/database/update_db.dart';

class DbProvider {
  static final DbProvider _instance = DbProvider._private();
  static Database? _database;

  DbProvider._private();

  factory DbProvider() {
    return _instance;
  }

  Database get database => _database!;

  Future<void> init() async {
    _database = await _init();
  }

  Future<Database> _init() async {
    String dbPath = join(await getDatabasesPath(), 'travel.db');
    return await openDatabase(
      dbPath,
      onCreate: (Database db, int version) async {
        await _create(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        await _update(db, oldVersion, newVersion);
      },
      version: 0,
    );
  }

  Future<void> _create(Database db) async {
    for (String query in CreateDb.createQueries()) {
      await db.execute(query);
    }
  }

  Future<void> _update(Database db, int oldVersion, int newVersion) async {
    for (int i = oldVersion + 1; i <= newVersion; i++) {
      if (!updates.containsKey(newVersion)) {
        continue;
      }
      String? query = updates[i];
      if (query != null) {
        await db.execute(query);
      }
    }
  }
}
