import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StartupRecord extends FirestoreRecord {
  StartupRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "tagline" field.
  String? _tagline;
  String get tagline => _tagline ?? '';
  bool hasTagline() => _tagline != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "foundedYear" field.
  int? _foundedYear;
  int get foundedYear => _foundedYear ?? 0;
  bool hasFoundedYear() => _foundedYear != null;

  // "teamSize" field.
  int? _teamSize;
  int get teamSize => _teamSize ?? 0;
  bool hasTeamSize() => _teamSize != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _tagline = snapshotData['tagline'] as String?;
    _description = snapshotData['description'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _website = snapshotData['website'] as String?;
    _industry = snapshotData['industry'] as String?;
    _foundedYear = castToType<int>(snapshotData['foundedYear']);
    _teamSize = castToType<int>(snapshotData['teamSize']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('startup');

  static Stream<StartupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StartupRecord.fromSnapshot(s));

  static Future<StartupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StartupRecord.fromSnapshot(s));

  static StartupRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StartupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StartupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StartupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StartupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StartupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStartupRecordData({
  String? name,
  String? tagline,
  String? description,
  String? email,
  String? phoneNumber,
  String? website,
  String? industry,
  int? foundedYear,
  int? teamSize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'tagline': tagline,
      'description': description,
      'email': email,
      'phoneNumber': phoneNumber,
      'website': website,
      'industry': industry,
      'foundedYear': foundedYear,
      'teamSize': teamSize,
    }.withoutNulls,
  );

  return firestoreData;
}

class StartupRecordDocumentEquality implements Equality<StartupRecord> {
  const StartupRecordDocumentEquality();

  @override
  bool equals(StartupRecord? e1, StartupRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.tagline == e2?.tagline &&
        e1?.description == e2?.description &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.website == e2?.website &&
        e1?.industry == e2?.industry &&
        e1?.foundedYear == e2?.foundedYear &&
        e1?.teamSize == e2?.teamSize;
  }

  @override
  int hash(StartupRecord? e) => const ListEquality().hash([
        e?.name,
        e?.tagline,
        e?.description,
        e?.email,
        e?.phoneNumber,
        e?.website,
        e?.industry,
        e?.foundedYear,
        e?.teamSize
      ]);

  @override
  bool isValidKey(Object? o) => o is StartupRecord;
}
