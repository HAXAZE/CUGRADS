import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "emailAddress_Login" field.
  String? _emailAddressLogin;
  String get emailAddressLogin => _emailAddressLogin ?? '';
  bool hasEmailAddressLogin() => _emailAddressLogin != null;

  // "password_Login" field.
  String? _passwordLogin;
  String get passwordLogin => _passwordLogin ?? '';
  bool hasPasswordLogin() => _passwordLogin != null;

  void _initializeFields() {
    _emailAddressLogin = snapshotData['emailAddress_Login'] as String?;
    _passwordLogin = snapshotData['password_Login'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersRecordData({
  String? emailAddressLogin,
  String? passwordLogin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emailAddress_Login': emailAddressLogin,
      'password_Login': passwordLogin,
    }.withoutNulls,
  );

  return firestoreData;
}
