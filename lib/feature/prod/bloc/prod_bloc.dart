import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';
import 'package:oldtom_admin/feature/categ/repo/categ_repo.dart';
import 'package:oldtom_admin/feature/prod/model/prod_model.dart';
import 'package:oldtom_admin/feature/prod/repo/prod_repo.dart';

part 'prod_event.dart';

part 'prod_state.dart';

part 'prod_bloc.freezed.dart';

class ProdBloc extends Bloc<ProdEvent, ProdState> {
  final ProdRepo _prodRepo;
  final CategRepo _categRepo;

  ProdBloc({required ProdRepo prodRepo, required CategRepo categRepo})
    : _prodRepo = prodRepo,
      _categRepo = categRepo,

      super(ProdState.init()) {
    on<ProdEvent>(_onEvent);
    // Read prods when the bloc start
    readProds();
  }

  // ====================
  // EVENT
  // ====================
  Future<void> _onEvent(ProdEvent event, Emitter<ProdState> emit) async {
    switch (event) {
      case _InitEvent():
        _init(event, emit);
        break;
      case _ReadProdsEvent():
        await _readProds(event, emit);
        break;
      case _CreateProdEvent():
        await _createProd(event, emit);
        break;
      case _UpdateProdEvent():
        await _updateProd(event, emit);
        break;
      case _DeleteProdEvent():
        await _deleteProd(event, emit);
        break;
    }
  }

  // ====================
  // ADD EVENT
  // ====================
  // Init
  void init() => add(const _InitEvent());

  // Read Prods
  void readProds() => add(_ReadProdsEvent());

  // Create Prod
  void createProd({required ProdModel prod}) =>
      add(_CreateProdEvent(prod: prod));

  // Update Prod
  void updateProd({required String id, required ProdModel prod}) =>
      add(_UpdateProdEvent(id: id, prod: prod));

  // Delete Prod
  void deleteProd({required String id}) => add(_DeleteProdEvent(id: id));

  // Select Image URL
  //void selectImageURL({String? selectedImageURL}) =>
  //    add(_SelectImageURLEvent(selectedImageURL: selectedImageURL));

  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitEvent event, Emitter<ProdState> emit) {
    emit(ProdState.init());
  }

  // ====================
  // Products
  // ====================

  // _Read Prods
  Future<void> _readProds(
    _ReadProdsEvent event,
    Emitter<ProdState> emit,
  ) async {
    try {
      emit(state.copyWith(status: ProdStatus.loading));
      final List<CategModel> categList = await _categRepo.readCategs();
      final List<ProdModel> products = await _prodRepo.readProds();
      // Get the Categ for each Prod
      final List<ProdModel> prodList = products.map((prod) {
        final prodCategList = prod.categID
            .map((id) => categList.firstWhere((c) => c.id == id))
            .toList();

        return prod.copyWith(categories: prodCategList);
      }).toList();
      emit(
        state.copyWith(
          status: ProdStatus.success,
          prodList: prodList,
          selectedImageURL: '',
        ),
      );
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(status: ProdStatus.error));
    }
  }

  // _Create Prod
  Future<void> _createProd(
    _CreateProdEvent event,
    Emitter<ProdState> emit,
  ) async {
    try {
      emit(state.copyWith(prodOperation: ProdOperation.createLoading));
      await _prodRepo.createProd(prod: event.prod);
      emit(state.copyWith(prodOperation: ProdOperation.createSuccess));
      readProds();
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(prodOperation: ProdOperation.createError));
    }
  }

  // _Update Prod
  Future<void> _updateProd(
    _UpdateProdEvent event,
    Emitter<ProdState> emit,
  ) async {
    try {
      emit(state.copyWith(prodOperation: ProdOperation.updateLoading));
      await _prodRepo.updateProd(id: event.id, newProd: event.prod);
      emit(state.copyWith(prodOperation: ProdOperation.updateSuccess));
      readProds();
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(prodOperation: ProdOperation.updateError));
    }
  }

  // _Delete Prod
  Future<void> _deleteProd(
    _DeleteProdEvent event,
    Emitter<ProdState> emit,
  ) async {
    try {
      emit(state.copyWith(prodOperation: ProdOperation.deleteLoading));
      await _prodRepo.deleteProd(id: event.id);
      emit(state.copyWith(prodOperation: ProdOperation.deleteSuccess));
      readProds();
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(prodOperation: ProdOperation.deleteError));
    }
  }

  // _Select Image URL
  //   void _selectImageURL(
  //     _SelectImageURLEvent event,
  //     Emitter<ProdState> emit,
  //   ) {
  //     final String selectedImageURL = event.selectedImageURL ?? '';
  //     emit(state.copyWith(selectedImageURL: selectedImageURL));
  //   }
}
