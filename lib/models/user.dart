import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  static const ID = "uid";
  static const NAME = "name";
  static const EMAIL = "email";
  static const PASSWORD = "password";
  static const PHONENO = "phoneNumber";
  static const USERNAME = "username";
  static const PUBLICADDRESS = "public_address";
  static const PRIVATEKEY = "private_key";
  static const SEEDPHRASE = "seed_phrase";

  String uid;
  String name;
  String email;
  String phoneNumber;
  String password;
  String username;
  String publicAddress;
  List privateKey;
  List seedPhrase;

  UserData({
    this.uid,
    this.name,
    this.email,
    this.phoneNumber,
    this.password,
    this.username,
    this.privateKey,
    this.publicAddress,
    this.seedPhrase,
  });

  UserData.fromSnapshot(DocumentSnapshot snapshot) {
    name = snapshot.data()[NAME];
    email = snapshot.data()[EMAIL];
    uid = snapshot.data()[ID];
    password = snapshot.data()[PASSWORD];
    phoneNumber = snapshot.data()[PHONENO];
    username = snapshot.data()[USERNAME];
    publicAddress = snapshot.get(PUBLICADDRESS);
    privateKey = snapshot.get(PRIVATEKEY);
    seedPhrase = snapshot.get(SEEDPHRASE);
  }
}
