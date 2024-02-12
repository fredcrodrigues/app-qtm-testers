import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "sobrenome" field.
  String? _sobrenome;
  String get sobrenome => _sobrenome ?? '';
  bool hasSobrenome() => _sobrenome != null;

  // "whatsapp" field.
  String? _whatsapp;
  String get whatsapp => _whatsapp ?? '';
  bool hasWhatsapp() => _whatsapp != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _nome = snapshotData['nome'] as String?;
    _genero = snapshotData['genero'] as String?;
    _sobrenome = snapshotData['sobrenome'] as String?;
    _whatsapp = snapshotData['whatsapp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? nome,
  String? genero,
  String? sobrenome,
  String? whatsapp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'nome': nome,
      'genero': genero,
      'sobrenome': sobrenome,
      'whatsapp': whatsapp,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.nome == e2?.nome &&
        e1?.genero == e2?.genero &&
        e1?.sobrenome == e2?.sobrenome &&
        e1?.whatsapp == e2?.whatsapp;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality()
      .hash([e?.email, e?.nome, e?.genero, e?.sobrenome, e?.whatsapp]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
