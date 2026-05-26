// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categ_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategEvent()';
}


}

/// @nodoc
class $CategEventCopyWith<$Res>  {
$CategEventCopyWith(CategEvent _, $Res Function(CategEvent) __);
}


/// Adds pattern-matching-related methods to [CategEvent].
extension CategEventPatterns on CategEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _ReadCategsEvent value)?  readCategs,TResult Function( _CreateCategEvent value)?  createCateg,TResult Function( _UpdateCategEvent value)?  updateCateg,TResult Function( _DeleteCategEvent value)?  deleteCateg,TResult Function( _SelectImageURLEvent value)?  selectImageURL,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _ReadCategsEvent() when readCategs != null:
return readCategs(_that);case _CreateCategEvent() when createCateg != null:
return createCateg(_that);case _UpdateCategEvent() when updateCateg != null:
return updateCateg(_that);case _DeleteCategEvent() when deleteCateg != null:
return deleteCateg(_that);case _SelectImageURLEvent() when selectImageURL != null:
return selectImageURL(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _ReadCategsEvent value)  readCategs,required TResult Function( _CreateCategEvent value)  createCateg,required TResult Function( _UpdateCategEvent value)  updateCateg,required TResult Function( _DeleteCategEvent value)  deleteCateg,required TResult Function( _SelectImageURLEvent value)  selectImageURL,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _ReadCategsEvent():
return readCategs(_that);case _CreateCategEvent():
return createCateg(_that);case _UpdateCategEvent():
return updateCateg(_that);case _DeleteCategEvent():
return deleteCateg(_that);case _SelectImageURLEvent():
return selectImageURL(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _ReadCategsEvent value)?  readCategs,TResult? Function( _CreateCategEvent value)?  createCateg,TResult? Function( _UpdateCategEvent value)?  updateCateg,TResult? Function( _DeleteCategEvent value)?  deleteCateg,TResult? Function( _SelectImageURLEvent value)?  selectImageURL,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _ReadCategsEvent() when readCategs != null:
return readCategs(_that);case _CreateCategEvent() when createCateg != null:
return createCateg(_that);case _UpdateCategEvent() when updateCateg != null:
return updateCateg(_that);case _DeleteCategEvent() when deleteCateg != null:
return deleteCateg(_that);case _SelectImageURLEvent() when selectImageURL != null:
return selectImageURL(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  readCategs,TResult Function( CategModel categ)?  createCateg,TResult Function( String id,  CategModel categ)?  updateCateg,TResult Function( String id)?  deleteCateg,TResult Function( String? selectedImageURL)?  selectImageURL,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _ReadCategsEvent() when readCategs != null:
return readCategs();case _CreateCategEvent() when createCateg != null:
return createCateg(_that.categ);case _UpdateCategEvent() when updateCateg != null:
return updateCateg(_that.id,_that.categ);case _DeleteCategEvent() when deleteCateg != null:
return deleteCateg(_that.id);case _SelectImageURLEvent() when selectImageURL != null:
return selectImageURL(_that.selectedImageURL);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  readCategs,required TResult Function( CategModel categ)  createCateg,required TResult Function( String id,  CategModel categ)  updateCateg,required TResult Function( String id)  deleteCateg,required TResult Function( String? selectedImageURL)  selectImageURL,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _ReadCategsEvent():
return readCategs();case _CreateCategEvent():
return createCateg(_that.categ);case _UpdateCategEvent():
return updateCateg(_that.id,_that.categ);case _DeleteCategEvent():
return deleteCateg(_that.id);case _SelectImageURLEvent():
return selectImageURL(_that.selectedImageURL);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  readCategs,TResult? Function( CategModel categ)?  createCateg,TResult? Function( String id,  CategModel categ)?  updateCateg,TResult? Function( String id)?  deleteCateg,TResult? Function( String? selectedImageURL)?  selectImageURL,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _ReadCategsEvent() when readCategs != null:
return readCategs();case _CreateCategEvent() when createCateg != null:
return createCateg(_that.categ);case _UpdateCategEvent() when updateCateg != null:
return updateCateg(_that.id,_that.categ);case _DeleteCategEvent() when deleteCateg != null:
return deleteCateg(_that.id);case _SelectImageURLEvent() when selectImageURL != null:
return selectImageURL(_that.selectedImageURL);case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent implements CategEvent {
  const _InitEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategEvent.init()';
}


}




/// @nodoc


class _ReadCategsEvent implements CategEvent {
  const _ReadCategsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadCategsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategEvent.readCategs()';
}


}




/// @nodoc


class _CreateCategEvent implements CategEvent {
  const _CreateCategEvent({required this.categ});
  

 final  CategModel categ;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCategEventCopyWith<_CreateCategEvent> get copyWith => __$CreateCategEventCopyWithImpl<_CreateCategEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCategEvent&&(identical(other.categ, categ) || other.categ == categ));
}


@override
int get hashCode => Object.hash(runtimeType,categ);

@override
String toString() {
  return 'CategEvent.createCateg(categ: $categ)';
}


}

/// @nodoc
abstract mixin class _$CreateCategEventCopyWith<$Res> implements $CategEventCopyWith<$Res> {
  factory _$CreateCategEventCopyWith(_CreateCategEvent value, $Res Function(_CreateCategEvent) _then) = __$CreateCategEventCopyWithImpl;
@useResult
$Res call({
 CategModel categ
});


$CategModelCopyWith<$Res> get categ;

}
/// @nodoc
class __$CreateCategEventCopyWithImpl<$Res>
    implements _$CreateCategEventCopyWith<$Res> {
  __$CreateCategEventCopyWithImpl(this._self, this._then);

  final _CreateCategEvent _self;
  final $Res Function(_CreateCategEvent) _then;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categ = null,}) {
  return _then(_CreateCategEvent(
categ: null == categ ? _self.categ : categ // ignore: cast_nullable_to_non_nullable
as CategModel,
  ));
}

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategModelCopyWith<$Res> get categ {
  
  return $CategModelCopyWith<$Res>(_self.categ, (value) {
    return _then(_self.copyWith(categ: value));
  });
}
}

/// @nodoc


class _UpdateCategEvent implements CategEvent {
  const _UpdateCategEvent({required this.id, required this.categ});
  

 final  String id;
 final  CategModel categ;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCategEventCopyWith<_UpdateCategEvent> get copyWith => __$UpdateCategEventCopyWithImpl<_UpdateCategEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCategEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.categ, categ) || other.categ == categ));
}


@override
int get hashCode => Object.hash(runtimeType,id,categ);

@override
String toString() {
  return 'CategEvent.updateCateg(id: $id, categ: $categ)';
}


}

/// @nodoc
abstract mixin class _$UpdateCategEventCopyWith<$Res> implements $CategEventCopyWith<$Res> {
  factory _$UpdateCategEventCopyWith(_UpdateCategEvent value, $Res Function(_UpdateCategEvent) _then) = __$UpdateCategEventCopyWithImpl;
@useResult
$Res call({
 String id, CategModel categ
});


$CategModelCopyWith<$Res> get categ;

}
/// @nodoc
class __$UpdateCategEventCopyWithImpl<$Res>
    implements _$UpdateCategEventCopyWith<$Res> {
  __$UpdateCategEventCopyWithImpl(this._self, this._then);

  final _UpdateCategEvent _self;
  final $Res Function(_UpdateCategEvent) _then;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categ = null,}) {
  return _then(_UpdateCategEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categ: null == categ ? _self.categ : categ // ignore: cast_nullable_to_non_nullable
as CategModel,
  ));
}

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategModelCopyWith<$Res> get categ {
  
  return $CategModelCopyWith<$Res>(_self.categ, (value) {
    return _then(_self.copyWith(categ: value));
  });
}
}

/// @nodoc


class _DeleteCategEvent implements CategEvent {
  const _DeleteCategEvent({required this.id});
  

 final  String id;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCategEventCopyWith<_DeleteCategEvent> get copyWith => __$DeleteCategEventCopyWithImpl<_DeleteCategEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCategEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CategEvent.deleteCateg(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCategEventCopyWith<$Res> implements $CategEventCopyWith<$Res> {
  factory _$DeleteCategEventCopyWith(_DeleteCategEvent value, $Res Function(_DeleteCategEvent) _then) = __$DeleteCategEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteCategEventCopyWithImpl<$Res>
    implements _$DeleteCategEventCopyWith<$Res> {
  __$DeleteCategEventCopyWithImpl(this._self, this._then);

  final _DeleteCategEvent _self;
  final $Res Function(_DeleteCategEvent) _then;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteCategEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SelectImageURLEvent implements CategEvent {
  const _SelectImageURLEvent({this.selectedImageURL});
  

 final  String? selectedImageURL;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectImageURLEventCopyWith<_SelectImageURLEvent> get copyWith => __$SelectImageURLEventCopyWithImpl<_SelectImageURLEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectImageURLEvent&&(identical(other.selectedImageURL, selectedImageURL) || other.selectedImageURL == selectedImageURL));
}


@override
int get hashCode => Object.hash(runtimeType,selectedImageURL);

@override
String toString() {
  return 'CategEvent.selectImageURL(selectedImageURL: $selectedImageURL)';
}


}

/// @nodoc
abstract mixin class _$SelectImageURLEventCopyWith<$Res> implements $CategEventCopyWith<$Res> {
  factory _$SelectImageURLEventCopyWith(_SelectImageURLEvent value, $Res Function(_SelectImageURLEvent) _then) = __$SelectImageURLEventCopyWithImpl;
@useResult
$Res call({
 String? selectedImageURL
});




}
/// @nodoc
class __$SelectImageURLEventCopyWithImpl<$Res>
    implements _$SelectImageURLEventCopyWith<$Res> {
  __$SelectImageURLEventCopyWithImpl(this._self, this._then);

  final _SelectImageURLEvent _self;
  final $Res Function(_SelectImageURLEvent) _then;

/// Create a copy of CategEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedImageURL = freezed,}) {
  return _then(_SelectImageURLEvent(
selectedImageURL: freezed == selectedImageURL ? _self.selectedImageURL : selectedImageURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CategState {

 CategStatus get status; CategOperation get categOperation; List<CategModel> get categList; String get selectedImageURL;
/// Create a copy of CategState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategStateCopyWith<CategState> get copyWith => _$CategStateCopyWithImpl<CategState>(this as CategState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategState&&(identical(other.status, status) || other.status == status)&&(identical(other.categOperation, categOperation) || other.categOperation == categOperation)&&const DeepCollectionEquality().equals(other.categList, categList)&&(identical(other.selectedImageURL, selectedImageURL) || other.selectedImageURL == selectedImageURL));
}


@override
int get hashCode => Object.hash(runtimeType,status,categOperation,const DeepCollectionEquality().hash(categList),selectedImageURL);

@override
String toString() {
  return 'CategState(status: $status, categOperation: $categOperation, categList: $categList, selectedImageURL: $selectedImageURL)';
}


}

/// @nodoc
abstract mixin class $CategStateCopyWith<$Res>  {
  factory $CategStateCopyWith(CategState value, $Res Function(CategState) _then) = _$CategStateCopyWithImpl;
@useResult
$Res call({
 CategStatus status, CategOperation categOperation, List<CategModel> categList, String selectedImageURL
});




}
/// @nodoc
class _$CategStateCopyWithImpl<$Res>
    implements $CategStateCopyWith<$Res> {
  _$CategStateCopyWithImpl(this._self, this._then);

  final CategState _self;
  final $Res Function(CategState) _then;

/// Create a copy of CategState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? categOperation = null,Object? categList = null,Object? selectedImageURL = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CategStatus,categOperation: null == categOperation ? _self.categOperation : categOperation // ignore: cast_nullable_to_non_nullable
as CategOperation,categList: null == categList ? _self.categList : categList // ignore: cast_nullable_to_non_nullable
as List<CategModel>,selectedImageURL: null == selectedImageURL ? _self.selectedImageURL : selectedImageURL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategState].
extension CategStatePatterns on CategState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategState value)  $default,){
final _that = this;
switch (_that) {
case _CategState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategState value)?  $default,){
final _that = this;
switch (_that) {
case _CategState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategStatus status,  CategOperation categOperation,  List<CategModel> categList,  String selectedImageURL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategState() when $default != null:
return $default(_that.status,_that.categOperation,_that.categList,_that.selectedImageURL);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategStatus status,  CategOperation categOperation,  List<CategModel> categList,  String selectedImageURL)  $default,) {final _that = this;
switch (_that) {
case _CategState():
return $default(_that.status,_that.categOperation,_that.categList,_that.selectedImageURL);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategStatus status,  CategOperation categOperation,  List<CategModel> categList,  String selectedImageURL)?  $default,) {final _that = this;
switch (_that) {
case _CategState() when $default != null:
return $default(_that.status,_that.categOperation,_that.categList,_that.selectedImageURL);case _:
  return null;

}
}

}

/// @nodoc


class _CategState implements CategState {
  const _CategState({this.status = CategStatus.init, this.categOperation = CategOperation.idle, final  List<CategModel> categList = const [], this.selectedImageURL = ''}): _categList = categList;
  

@override@JsonKey() final  CategStatus status;
@override@JsonKey() final  CategOperation categOperation;
 final  List<CategModel> _categList;
@override@JsonKey() List<CategModel> get categList {
  if (_categList is EqualUnmodifiableListView) return _categList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categList);
}

@override@JsonKey() final  String selectedImageURL;

/// Create a copy of CategState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategStateCopyWith<_CategState> get copyWith => __$CategStateCopyWithImpl<_CategState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategState&&(identical(other.status, status) || other.status == status)&&(identical(other.categOperation, categOperation) || other.categOperation == categOperation)&&const DeepCollectionEquality().equals(other._categList, _categList)&&(identical(other.selectedImageURL, selectedImageURL) || other.selectedImageURL == selectedImageURL));
}


@override
int get hashCode => Object.hash(runtimeType,status,categOperation,const DeepCollectionEquality().hash(_categList),selectedImageURL);

@override
String toString() {
  return 'CategState(status: $status, categOperation: $categOperation, categList: $categList, selectedImageURL: $selectedImageURL)';
}


}

/// @nodoc
abstract mixin class _$CategStateCopyWith<$Res> implements $CategStateCopyWith<$Res> {
  factory _$CategStateCopyWith(_CategState value, $Res Function(_CategState) _then) = __$CategStateCopyWithImpl;
@override @useResult
$Res call({
 CategStatus status, CategOperation categOperation, List<CategModel> categList, String selectedImageURL
});




}
/// @nodoc
class __$CategStateCopyWithImpl<$Res>
    implements _$CategStateCopyWith<$Res> {
  __$CategStateCopyWithImpl(this._self, this._then);

  final _CategState _self;
  final $Res Function(_CategState) _then;

/// Create a copy of CategState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? categOperation = null,Object? categList = null,Object? selectedImageURL = null,}) {
  return _then(_CategState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CategStatus,categOperation: null == categOperation ? _self.categOperation : categOperation // ignore: cast_nullable_to_non_nullable
as CategOperation,categList: null == categList ? _self._categList : categList // ignore: cast_nullable_to_non_nullable
as List<CategModel>,selectedImageURL: null == selectedImageURL ? _self.selectedImageURL : selectedImageURL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
