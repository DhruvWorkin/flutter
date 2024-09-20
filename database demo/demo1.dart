import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class MyDatabase{

  Future<Database> initDatabase() async{
    return await openDatabase(
      join(await getDatabasesPath(),'MyDatabase.db'),
      version: 1,
      onCreate: (db,version) async {
        await db.execute('CREATE TABLE STUDENT(id INTEGER Primary key, name TEXT)');
      },
    );
  }
  Future<int> insertUser(String name) async{
    Database db = await initDatabase();
    Map<String,dynamic> user={};
    user['name']=name;
    int id= await db.insert('STUDENT',user);
    return id;
  }
  Future<List<dynamic>> getUsersFromDatabase() async{
    Database db= await initDatabase();
    List<dynamic> users= await db.rawQuery("Select * from STUDENT");
    return users;
  }
  Future<int> deleteUSer(int id) async{
    Database db= await initDatabase();
    int pk= await db.delete('STUDENT', where: 'id=?',whereArgs: [id]);
    return pk;
  }
  Future<int> updateUser(int pk, String name) async{
    Database db= await initDatabase();
    Map<String,dynamic> users={};
    users['name']=name;
    int id = await db.update('STUDENT',users, where: 'id=?',whereArgs: [pk]);
    return id;
  }
}