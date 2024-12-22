import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfilePicRecord extends FirestoreRecord {
  ProfilePicRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('profilePic')
          : FirebaseFirestore.instance.collectionGroup('profilePic');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('profilePic').doc(id);

  static Stream<ProfilePicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfilePicRecord.fromSnapshot(s));

  static Future<ProfilePicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfilePicRecord.fromSnapshot(s));

  static ProfilePicRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfilePicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfilePicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfilePicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfilePicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfilePicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfilePicRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfilePicRecordDocumentEquality implements Equality<ProfilePicRecord> {
  const ProfilePicRecordDocumentEquality();

  @override
  bool equals(ProfilePicRecord? e1, ProfilePicRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(ProfilePicRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is ProfilePicRecord;
}
