import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropiedadRecord extends FirestoreRecord {
  PropiedadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "meters" field.
  double? _meters;
  double get meters => _meters ?? 0.0;
  bool hasMeters() => _meters != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "comentarios" field.
  List<String>? _comentarios;
  List<String> get comentarios => _comentarios ?? const [];
  bool hasComentarios() => _comentarios != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "filtrado" field.
  List<String>? _filtrado;
  List<String> get filtrado => _filtrado ?? const [];
  bool hasFiltrado() => _filtrado != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "bathroom" field.
  String? _bathroom;
  String get bathroom => _bathroom ?? '';
  bool hasBathroom() => _bathroom != null;

  // "rooms" field.
  String? _rooms;
  String get rooms => _rooms ?? '';
  bool hasRooms() => _rooms != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "owner_id" field.
  DocumentReference? _ownerId;
  DocumentReference? get ownerId => _ownerId;
  bool hasOwnerId() => _ownerId != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "favoritos" field.
  List<DocumentReference>? _favoritos;
  List<DocumentReference> get favoritos => _favoritos ?? const [];
  bool hasFavoritos() => _favoritos != null;

  // "revision" field.
  bool? _revision;
  bool get revision => _revision ?? false;
  bool hasRevision() => _revision != null;

  // "publicado" field.
  bool? _publicado;
  bool get publicado => _publicado ?? false;
  bool hasPublicado() => _publicado != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _meters = castToType<double>(snapshotData['meters']);
    _description = snapshotData['description'] as String?;
    _comentarios = getDataList(snapshotData['comentarios']);
    _address = snapshotData['address'] as String?;
    _filtrado = getDataList(snapshotData['filtrado']);
    _canton = snapshotData['canton'] as String?;
    _provincia = snapshotData['provincia'] as String?;
    _video = snapshotData['video'] as String?;
    _bathroom = snapshotData['bathroom'] as String?;
    _rooms = snapshotData['rooms'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _ownerId = snapshotData['owner_id'] as DocumentReference?;
    _state = snapshotData['state'] as String?;
    _favoritos = getDataList(snapshotData['favoritos']);
    _revision = snapshotData['revision'] as bool?;
    _publicado = snapshotData['publicado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('propiedad');

  static Stream<PropiedadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropiedadRecord.fromSnapshot(s));

  static Future<PropiedadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropiedadRecord.fromSnapshot(s));

  static PropiedadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropiedadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropiedadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropiedadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropiedadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropiedadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropiedadRecordData({
  int? id,
  String? name,
  String? image,
  double? price,
  double? meters,
  String? description,
  String? address,
  String? canton,
  String? provincia,
  String? video,
  String? bathroom,
  String? rooms,
  DateTime? createdAt,
  DocumentReference? ownerId,
  String? state,
  bool? revision,
  bool? publicado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'meters': meters,
      'description': description,
      'address': address,
      'canton': canton,
      'provincia': provincia,
      'video': video,
      'bathroom': bathroom,
      'rooms': rooms,
      'created_at': createdAt,
      'owner_id': ownerId,
      'state': state,
      'revision': revision,
      'publicado': publicado,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropiedadRecordDocumentEquality implements Equality<PropiedadRecord> {
  const PropiedadRecordDocumentEquality();

  @override
  bool equals(PropiedadRecord? e1, PropiedadRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.meters == e2?.meters &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.comentarios, e2?.comentarios) &&
        e1?.address == e2?.address &&
        listEquality.equals(e1?.filtrado, e2?.filtrado) &&
        e1?.canton == e2?.canton &&
        e1?.provincia == e2?.provincia &&
        e1?.video == e2?.video &&
        e1?.bathroom == e2?.bathroom &&
        e1?.rooms == e2?.rooms &&
        e1?.createdAt == e2?.createdAt &&
        e1?.ownerId == e2?.ownerId &&
        e1?.state == e2?.state &&
        listEquality.equals(e1?.favoritos, e2?.favoritos) &&
        e1?.revision == e2?.revision &&
        e1?.publicado == e2?.publicado;
  }

  @override
  int hash(PropiedadRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.image,
        e?.price,
        e?.meters,
        e?.description,
        e?.comentarios,
        e?.address,
        e?.filtrado,
        e?.canton,
        e?.provincia,
        e?.video,
        e?.bathroom,
        e?.rooms,
        e?.createdAt,
        e?.ownerId,
        e?.state,
        e?.favoritos,
        e?.revision,
        e?.publicado
      ]);

  @override
  bool isValidKey(Object? o) => o is PropiedadRecord;
}
