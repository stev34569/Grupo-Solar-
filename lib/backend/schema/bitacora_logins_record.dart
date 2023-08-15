import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BitacoraLoginsRecord extends FirestoreRecord {
  BitacoraLoginsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _user = snapshotData['user'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bitacora_logins');

  static Stream<BitacoraLoginsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BitacoraLoginsRecord.fromSnapshot(s));

  static Future<BitacoraLoginsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BitacoraLoginsRecord.fromSnapshot(s));

  static BitacoraLoginsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BitacoraLoginsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BitacoraLoginsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BitacoraLoginsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BitacoraLoginsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BitacoraLoginsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBitacoraLoginsRecordData({
  int? id,
  DocumentReference? user,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'user': user,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class BitacoraLoginsRecordDocumentEquality
    implements Equality<BitacoraLoginsRecord> {
  const BitacoraLoginsRecordDocumentEquality();

  @override
  bool equals(BitacoraLoginsRecord? e1, BitacoraLoginsRecord? e2) {
    return e1?.id == e2?.id && e1?.user == e2?.user && e1?.date == e2?.date;
  }

  @override
  int hash(BitacoraLoginsRecord? e) =>
      const ListEquality().hash([e?.id, e?.user, e?.date]);

  @override
  bool isValidKey(Object? o) => o is BitacoraLoginsRecord;
}
