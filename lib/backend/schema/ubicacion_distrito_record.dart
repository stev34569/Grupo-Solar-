import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UbicacionDistritoRecord extends FirestoreRecord {
  UbicacionDistritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "distrito" field.
  String? _distrito;
  String get distrito => _distrito ?? '';
  bool hasDistrito() => _distrito != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _canton = snapshotData['canton'] as String?;
    _distrito = snapshotData['distrito'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ubicacionDistrito');

  static Stream<UbicacionDistritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UbicacionDistritoRecord.fromSnapshot(s));

  static Future<UbicacionDistritoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UbicacionDistritoRecord.fromSnapshot(s));

  static UbicacionDistritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UbicacionDistritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UbicacionDistritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UbicacionDistritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UbicacionDistritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UbicacionDistritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUbicacionDistritoRecordData({
  int? id,
  String? canton,
  String? distrito,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'canton': canton,
      'distrito': distrito,
    }.withoutNulls,
  );

  return firestoreData;
}

class UbicacionDistritoRecordDocumentEquality
    implements Equality<UbicacionDistritoRecord> {
  const UbicacionDistritoRecordDocumentEquality();

  @override
  bool equals(UbicacionDistritoRecord? e1, UbicacionDistritoRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.canton == e2?.canton &&
        e1?.distrito == e2?.distrito;
  }

  @override
  int hash(UbicacionDistritoRecord? e) =>
      const ListEquality().hash([e?.id, e?.canton, e?.distrito]);

  @override
  bool isValidKey(Object? o) => o is UbicacionDistritoRecord;
}
