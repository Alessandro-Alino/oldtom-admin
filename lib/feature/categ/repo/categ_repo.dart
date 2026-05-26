import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';

class CategRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ====================
  // COLLECTIONS
  // ====================

  late final CollectionReference<Map<String, dynamic>> _categCollRef =
      _firestore.collection('categories');

  // ====================
  // CATEGORIES
  // ====================

  // READ ALL
  Future<List<CategModel>> readCategs() async {
    final res = await _categCollRef.get();

    final List<CategModel> categList = res.docs.map((doc) {
      final data = doc.data();
      // Get the Categ from the doc[data], and add the ID to the Model
      final CategModel categ = CategModel.fromJson(data).copyWith(id: doc.id);
      return categ;
    }).toList();

    return categList;
  }

  // CREATE
  Future<void> createCateg({required CategModel categ}) async {
    await _categCollRef.add(categ.toJson());
  }

  // READ SINGLE
  Future<DocumentSnapshot<Map<String, dynamic>>> readCategById(
    String id,
  ) async {
      final res = await _categCollRef.doc(id).get();
      return res;
  }

  // UPDATE
  Future<void> updateCateg({required String id, required CategModel newCateg}) async {
      await _categCollRef.doc(id).update(newCateg.toJson());
  }

  // DELETE
  Future<void> deleteCateg({required String id}) async {
    await _categCollRef.doc(id).delete();
  }

}
