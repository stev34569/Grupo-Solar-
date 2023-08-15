import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CantonRecord extends FirestoreRecord {
  CantonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "provinciaRef" field.
  String? _provinciaRef;
  String get provinciaRef => _provinciaRef ?? '';
  bool hasProvinciaRef() => _provinciaRef != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _provinciaRef = snapshotData['provinciaRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('canton');

  static Stream<CantonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CantonRecord.fromSnapshot(s));

  static Future<CantonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CantonRecord.fromSnapshot(s));

  static CantonRecord fromSnapshot(DocumentSnapshot snapshot) => CantonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CantonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CantonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CantonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CantonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCantonRecordData({
  String? nombre,
  String? provinciaRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'provinciaRef': provinciaRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CantonRecordDocumentEquality implements Equality<CantonRecord> {
  const CantonRecordDocumentEquality();

  @override
  bool equals(CantonRecord? e1, CantonRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.provinciaRef == e2?.provinciaRef;
  }

  @override
  int hash(CantonRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.provinciaRef]);

  @override
  bool isValidKey(Object? o) => o is CantonRecord;
}
