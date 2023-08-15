import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvinciaRecord extends FirestoreRecord {
  ProvinciaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "idPro" field.
  int? _idPro;
  int get idPro => _idPro ?? 0;
  bool hasIdPro() => _idPro != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _idPro = castToType<int>(snapshotData['idPro']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Provincia');

  static Stream<ProvinciaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProvinciaRecord.fromSnapshot(s));

  static Future<ProvinciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProvinciaRecord.fromSnapshot(s));

  static ProvinciaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProvinciaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProvinciaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProvinciaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProvinciaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProvinciaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProvinciaRecordData({
  String? nombre,
  int? idPro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'idPro': idPro,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProvinciaRecordDocumentEquality implements Equality<ProvinciaRecord> {
  const ProvinciaRecordDocumentEquality();

  @override
  bool equals(ProvinciaRecord? e1, ProvinciaRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.idPro == e2?.idPro;
  }

  @override
  int hash(ProvinciaRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.idPro]);

  @override
  bool isValidKey(Object? o) => o is ProvinciaRecord;
}
