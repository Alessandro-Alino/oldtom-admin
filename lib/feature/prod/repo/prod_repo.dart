import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oldtom_admin/feature/prod/model/prod_model.dart';

class ProdRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ====================
  // COLLECTIONS
  // ====================

  late final CollectionReference<Map<String, dynamic>> _categCollRef =
      _firestore.collection('categories');

  late final CollectionReference<Map<String, dynamic>> _prodCollRef = _firestore
      .collection('products');

  // ====================
  // PRODUCTS
  // ====================

  // READ ALL
  Future<List<ProdModel>> readProds() async {
    final res = await _prodCollRef.get();

    final List<ProdModel> prodList = res.docs.map((doc) {
      final data = doc.data();
      log('$data');
      // Get the Prod from the doc[data], and add the ID to the Model
      final ProdModel prod = ProdModel.fromJson(data).copyWith(id: doc.id);
      return prod;
    }).toList();

    return prodList;
  }

  // CREATE
  Future<void> createProd({required ProdModel prod}) async {
    await _prodCollRef.add(prod.toJson());
  }

  // READ SINGLE
  Future<DocumentSnapshot<Map<String, dynamic>>> readProdById(String id) async {
    final res = await _prodCollRef.doc(id).get();
    return res;
  }

  // READ CATEG FOR PROD
  Future<DocumentSnapshot<Map<String, dynamic>>> readCategById(
    String id,
  ) async {
    final res = await _categCollRef.doc(id).get();
    return res;
  }

  // UPDATE
  Future<void> updateProd({
    required String id,
    required ProdModel newProd,
  }) async {
    await _prodCollRef.doc(id).update(newProd.toJson());
  }

  // DELETE
  Future<void> deleteProd({required String id}) async {
    await _prodCollRef.doc(id).delete();
  }
}
