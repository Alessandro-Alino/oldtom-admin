import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';
import 'package:oldtom_admin/feature/categ/repo/categ_repo.dart';

part 'categ_event.dart';

part 'categ_state.dart';

part 'categ_bloc.freezed.dart';

class CategBloc extends Bloc<CategEvent, CategState> {
  final CategRepo _firestoreRepo;

  CategBloc({required CategRepo firestoreRepo})
    : _firestoreRepo = firestoreRepo,
      super(CategState.init()) {
    on<CategEvent>(_onEvent);
  }

  // ====================
  // EVENT
  // ====================
  Future<void> _onEvent(
    CategEvent event,
    Emitter<CategState> emit,
  ) async {
    switch (event) {
      case _InitEvent():
        _init(event, emit);
        break;
      case _ReadCategsEvent():
        await _readCategs(event, emit);
        break;
      case _CreateCategEvent():
        await _createCateg(event, emit);
        break;
      case _UpdateCategEvent():
        await _updateCateg(event, emit);
        break;
      case _DeleteCategEvent():
        await _deleteCateg(event, emit);
        break;
      case _SelectImageURLEvent():
        _selectImageURL(event, emit);
        break;
    }
  }

  // ====================
  // ADD EVENT
  // ====================
  // Init
  void init() => add(const _InitEvent());

  // Read Categs
  void readCategs() => add(_ReadCategsEvent());

  // Create Categ
  void createCateg({required CategModel categ}) =>
      add(_CreateCategEvent(categ: categ));

  // Update Categ
  void updateCateg({required String id, required CategModel categ}) =>
      add(_UpdateCategEvent(id: id, categ: categ));

  // Delete Categ
  void deleteCateg({required String id}) => add(_DeleteCategEvent(id: id));

  // Select Image URL
  void selectImageURL({String? selectedImageURL}) =>
      add(_SelectImageURLEvent(selectedImageURL: selectedImageURL));

  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitEvent event, Emitter<CategState> emit) {
    emit(CategState.init());
  }

  // ====================
  // Categories
  // ====================

  // _Read Categs
  Future<void> _readCategs(
    _ReadCategsEvent event,
    Emitter<CategState> emit,
  ) async {
    try {
      emit(state.copyWith(status: CategStatus.loading));
      await Future.delayed(const Duration(seconds: 2), () {});
      final List<CategModel> categList = await _firestoreRepo.readCategs();
      emit(
        state.copyWith(
          status: CategStatus.success,
          categList: categList,
          selectedImageURL: '',
        ),
      );
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(status: CategStatus.error));
    }
  }

  // _Create Categ
  Future<void> _createCateg(
    _CreateCategEvent event,
    Emitter<CategState> emit,
  ) async {
    try {
      emit(state.copyWith(categOperation: CategOperation.createLoading));
      await _firestoreRepo.createCateg(categ: event.categ);
      emit(state.copyWith(categOperation: CategOperation.createSuccess));
      readCategs();
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(categOperation: CategOperation.createError));
    }
  }

  // _Update Categ
  Future<void> _updateCateg(
    _UpdateCategEvent event,
    Emitter<CategState> emit,
  ) async {
    try {
      emit(state.copyWith(categOperation: CategOperation.updateLoading));
      await _firestoreRepo.updateCateg(id: event.id, newCateg: event.categ);
      emit(state.copyWith(categOperation: CategOperation.updateSuccess));
      readCategs();
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(categOperation: CategOperation.updateError));
    }
  }

  // _Delete Categ
  Future<void> _deleteCateg(
    _DeleteCategEvent event,
    Emitter<CategState> emit,
  ) async {
    try {
      emit(state.copyWith(categOperation: CategOperation.deleteLoading));
      await _firestoreRepo.deleteCateg(id: event.id);
      emit(state.copyWith(categOperation: CategOperation.deleteSuccess));
      readCategs();
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(categOperation: CategOperation.deleteError));
    }
  }

  // _Select Image URL
  void _selectImageURL(
    _SelectImageURLEvent event,
    Emitter<CategState> emit,
  ) {
    final String selectedImageURL = event.selectedImageURL ?? '';
    emit(state.copyWith(selectedImageURL: selectedImageURL));
  }
}
