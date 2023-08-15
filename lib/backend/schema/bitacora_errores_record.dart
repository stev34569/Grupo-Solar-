import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BitacoraErroresRecord extends FirestoreRecord {
  BitacoraErroresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bitacora_errores');

  static Stream<BitacoraErroresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BitacoraErroresRecord.fromSnapshot(s));

  static Future<BitacoraErroresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BitacoraErroresRecord.fromSnapshot(s));

  static BitacoraErroresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BitacoraErroresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BitacoraErroresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BitacoraErroresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BitacoraErroresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BitacoraErroresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBitacoraErroresRecordData({
  int? id,
  String? description,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'description': description,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class BitacoraErroresRecordDocumentEquality
    implements Equality<BitacoraErroresRecord> {
  const BitacoraErroresRecordDocumentEquality();

  @override
  bool equals(BitacoraErroresRecord? e1, BitacoraErroresRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date;
  }

  @override
  int hash(BitacoraErroresRecord? e) =>
      const ListEquality().hash([e?.id, e?.description, e?.date]);

  @override
  bool isValidKey(Object? o) => o is BitacoraErroresRecord;
}
