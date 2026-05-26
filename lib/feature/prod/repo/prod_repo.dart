import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProdRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ====================
  // COLLECTIONS
  // ====================

  late final CollectionReference<Map<String, dynamic>> _prodCollRef = _firestore
      .collection('products');

  // ====================
  // PRODUCTS
  // ====================

  // CREATE
  Future<void> addProd({required String name, required double price}) async {
    try {
      await _prodCollRef.add({
        'name': name,
        'price': price,
        'createdAt': Timestamp.now(),
      });

      log('[FIRESTORE_REPO] Prod added');
    } catch (e) {
      log('[FIRESTORE_REPO] addProd error: $e');
      rethrow;
    }
  }

  // READ ALL
  Future<QuerySnapshot<Map<String, dynamic>>> getProds() async {
    try {
      final res = await _prodCollRef.get();

      log('[FIRESTORE_REPO] Prods: ${res.docs.length}');

      return res;
    } catch (e) {
      log('[FIRESTORE_REPO] getProds error: $e');
      rethrow;
    }
  }

  // READ SINGLE
  Future<DocumentSnapshot<Map<String, dynamic>>> getProdById(
    String docId,
  ) async {
    try {
      final res = await _prodCollRef.doc(docId).get();

      return res;
    } catch (e) {
      log('[FIRESTORE_REPO] getProdById error: $e');
      rethrow;
    }
  }

  // UPDATE
  Future<void> updateProd({
    required String docId,
    required String newName,
    required double newPrice,
  }) async {
    try {
      await _prodCollRef.doc(docId).update({
        'name': newName,
        'price': newPrice,
      });

      log('[FIRESTORE_REPO] Prod updated');
    } catch (e) {
      log('[FIRESTORE_REPO] updateProd error: $e');
      rethrow;
    }
  }

  // DELETE
  Future<void> deleteProd(String docId) async {
    try {
      await _prodCollRef.doc(docId).delete();

      log('[FIRESTORE_REPO] Prod deleted');
    } catch (e) {
      log('[FIRESTORE_REPO] deleteProd error: $e');
      rethrow;
    }
  }
}
