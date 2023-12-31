import 'package:travel_organizer/src/core/utils/database/tables.dart';

class CreateDb {
  static List<String> createQueries() => [
        users,
        clientes,
        viagem,
        viagemItem,
      ];

  static String get users => ''
      'CREATE TABLE ${Tables.users} (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, username TEXT NOT NULL, password TEXT NOT NULL, nome TEXT NOT NULL);';

  static String get clientes => ''
      'CREATE TABLE ${Tables.clientes} (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, doc TEXT, nickname TEXT, fone TEXT, endereco TEXT, bairro TEXT, numero TEXT, cep TEXT, cidade TEXT, uf TEXT, dob INTEGER, observacao TEXT);';

  static String get viagem =>
      'CREATE TABLE ${Tables.viagem} (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, local TEXT NOT NULL, data_ida INTEGER NOT NULL, data_retorno INTEGER NOT NULL, roteiro TEXT NOT NULL, situacao INTEGER NOT NULL, empresa TEXT, observacao TEXT);';

  static String get viagemItem =>
      'CREATE TABLE ${Tables.viagemItem} (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, viagem_id INTEGER NOT NULL, cliente_id INTEGER NOT NULL, observacao TEXT, posicao TEXT, FOREIGN KEY(cliente_id) REFERENCES clientes(id), FOREIGN KEY(viagem_id) REFERENCES viagem(id));';
}
