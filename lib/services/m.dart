import 'package:cloud_firestore/cloud_firestore.dart';

class TestingService {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  final CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('sa');

  Future<void> addFunction() async {
    collectionRef.add('smth');
  }
}
