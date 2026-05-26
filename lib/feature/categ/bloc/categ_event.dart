part of 'categ_bloc.dart';

@freezed
sealed class CategEvent with _$CategEvent {
  const factory CategEvent.init() = _InitEvent;

  // Read Categs
  const factory CategEvent.readCategs() = _ReadCategsEvent;

  // Create Categ
  const factory CategEvent.createCateg({required CategModel categ}) =
      _CreateCategEvent;

  // Update Categ
  const factory CategEvent.updateCateg({
    required String id,
    required CategModel categ,
  }) = _UpdateCategEvent;

  // Delete Categ
  const factory CategEvent.deleteCateg({required String id}) =
      _DeleteCategEvent;

  // Selected Image URL
  const factory CategEvent.selectImageURL({String? selectedImageURL}) =
  _SelectImageURLEvent;
}
