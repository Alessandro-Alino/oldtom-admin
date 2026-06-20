part of 'prod_bloc.dart';

@freezed
sealed class ProdEvent with _$ProdEvent {
  const factory ProdEvent.init() = _InitEvent;

  // Read Prods
  const factory ProdEvent.readProds() = _ReadProdsEvent;

  // Create Prod
  const factory ProdEvent.createProd({required ProdModel prod}) =
      _CreateProdEvent;

  // Update Prod
  const factory ProdEvent.updateProd({
    required String id,
    required ProdModel prod,
  }) = _UpdateProdEvent;

  // Delete Prod
  const factory ProdEvent.deleteProd({required String id}) =
      _DeleteProdEvent;
}
