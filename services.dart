//هي الصفحة رح تستعيد بيانات الحرفيين من الداتا بيس
import 'package:cloud_firestore/cloud_firestore.dart';
import 'models.dart';

class CraftsmanService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Craftsman>> getCraftsmen() async {
    final snapshot = await _db.collection('craftsmen').get();
    return snapshot.docs
        .map((doc) => Craftsman.fromMap(doc.data(), doc.id))
        .toList();
  }
}
