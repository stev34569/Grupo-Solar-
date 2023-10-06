import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UbicacionCantonRecord extends FirestoreRecord {
  UbicacionCantonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _provincia = snapshotData['provincia'] as String?;
    _canton = snapshotData['canton'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ubicacionCanton');

  static Stream<UbicacionCantonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UbicacionCantonRecord.fromSnapshot(s));

  static Future<UbicacionCantonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UbicacionCantonRecord.fromSnapshot(s));

  static UbicacionCantonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UbicacionCantonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UbicacionCantonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UbicacionCantonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UbicacionCantonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UbicacionCantonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUbicacionCantonRecordData({
  int? id,
  String? provincia,
  String? canton,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'provincia': provincia,
      'canton': canton,
    }.withoutNulls,
  );

  return firestoreData;
}

class UbicacionCantonRecordDocumentEquality
    implements Equality<UbicacionCantonRecord> {
  const UbicacionCantonRecordDocumentEquality();

  @override
  bool equals(UbicacionCantonRecord? e1, UbicacionCantonRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.provincia == e2?.provincia &&
        e1?.canton == e2?.canton;
  }

  @override
  int hash(UbicacionCantonRecord? e) =>
      const ListEquality().hash([e?.id, e?.provincia, e?.canton]);

  @override
  bool isValidKey(Object? o) => o is UbicacionCantonRecord;
}
