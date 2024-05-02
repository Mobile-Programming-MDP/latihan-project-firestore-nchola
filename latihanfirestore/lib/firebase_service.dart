import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latihanfirestore/userdata.dart';

class FirebaseService{
  static final COLLECTION_REFF = 'user' ;

  final firestore = FirebaseFirestore.instance;
  late final CollectionReference userRef;

  FirebaseService(){
    userRef = firestore.collection(COLLECTION_REFF);
  }

  void tambah(userData userData){
    DocumentReference documentReference = userRef.doc(userData.nama);
    documentReference.set(userData.toJson());
    
  }
}