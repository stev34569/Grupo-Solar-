import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportesRecord extends FirestoreRecord {
  ReportesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "date_sold" field.
  DateTime? _dateSold;
  DateTime? get dateSold => _dateSold;
  bool hasDateSold() => _dateSold != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _dateSold = snapshotData['date_sold'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reportes');

  static Stream<ReportesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportesRecord.fromSnapshot(s));

  static Future<ReportesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportesRecord.fromSnapshot(s));

  static ReportesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportesRecordData({
  int? id,
  DateTime? dateSold,
  String? description,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'date_sold': dateSold,
      'description': description,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportesRecordDocumentEquality implements Equality<ReportesRecord> {
  const ReportesRecordDocumentEquality();

  @override
  bool equals(ReportesRecord? e1, ReportesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.dateSold == e2?.dateSold &&
        e1?.description == e2?.description &&
        e1?.user == e2?.user;
  }

  @override
  int hash(ReportesRecord? e) =>
      const ListEquality().hash([e?.id, e?.dateSold, e?.description, e?.user]);

  @override
  bool isValidKey(Object? o) => o is ReportesRecord;
}
