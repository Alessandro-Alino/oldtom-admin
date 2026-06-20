// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prod_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProdEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProdEvent()';
}


}

/// @nodoc
class $ProdEventCopyWith<$Res>  {
$ProdEventCopyWith(ProdEvent _, $Res Function(ProdEvent) __);
}


/// Adds pattern-matching-related methods to [ProdEvent].
extension ProdEventPatterns on ProdEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _ReadProdsEvent value)?  readProds,TResult Function( _CreateProdEvent value)?  createProd,TResult Function( _UpdateProdEvent value)?  updateProd,TResult Function( _DeleteProdEvent value)?  deleteProd,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _ReadProdsEvent() when readProds != null:
return readProds(_that);case _CreateProdEvent() when createProd != null:
return createProd(_that);case _UpdateProdEvent() when updateProd != null:
return updateProd(_that);case _DeleteProdEvent() when deleteProd != null:
return deleteProd(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _ReadProdsEvent value)  readProds,required TResult Function( _CreateProdEvent value)  createProd,required TResult Function( _UpdateProdEvent value)  updateProd,required TResult Function( _DeleteProdEvent value)  deleteProd,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _ReadProdsEvent():
return readProds(_that);case _CreateProdEvent():
return createProd(_that);case _UpdateProdEvent():
return updateProd(_that);case _DeleteProdEvent():
return deleteProd(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _ReadProdsEvent value)?  readProds,TResult? Function( _CreateProdEvent value)?  createProd,TResult? Function( _UpdateProdEvent value)?  updateProd,TResult? Function( _DeleteProdEvent value)?  deleteProd,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _ReadProdsEvent() when readProds != null:
return readProds(_that);case _CreateProdEvent() when createProd != null:
return createProd(_that);case _UpdateProdEvent() when updateProd != null:
return updateProd(_that);case _DeleteProdEvent() when deleteProd != null:
return deleteProd(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  readProds,TResult Function( ProdModel prod)?  createProd,TResult Function( String id,  ProdModel prod)?  updateProd,TResult Function( String id)?  deleteProd,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _ReadProdsEvent() when readProds != null:
return readProds();case _CreateProdEvent() when createProd != null:
return createProd(_that.prod);case _UpdateProdEvent() when updateProd != null:
return updateProd(_that.id,_that.prod);case _DeleteProdEvent() when deleteProd != null:
return deleteProd(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  readProds,required TResult Function( ProdModel prod)  createProd,required TResult Function( String id,  ProdModel prod)  updateProd,required TResult Function( String id)  deleteProd,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _ReadProdsEvent():
return readProds();case _CreateProdEvent():
return createProd(_that.prod);case _UpdateProdEvent():
return updateProd(_that.id,_that.prod);case _DeleteProdEvent():
return deleteProd(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  readProds,TResult? Function( ProdModel prod)?  createProd,TResult? Function( String id,  ProdModel prod)?  updateProd,TResult? Function( String id)?  deleteProd,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _ReadProdsEvent() when readProds != null:
return readProds();case _CreateProdEvent() when createProd != null:
return createProd(_that.prod);case _UpdateProdEvent() when updateProd != null:
return updateProd(_that.id,_that.prod);case _DeleteProdEvent() when deleteProd != null:
return deleteProd(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent implements ProdEvent {
  const _InitEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProdEvent.init()';
}


}




/// @nodoc


class _ReadProdsEvent implements ProdEvent {
  const _ReadProdsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadProdsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProdEvent.readProds()';
}


}




/// @nodoc


class _CreateProdEvent implements ProdEvent {
  const _CreateProdEvent({required this.prod});
  

 final  ProdModel prod;

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProdEventCopyWith<_CreateProdEvent> get copyWith => __$CreateProdEventCopyWithImpl<_CreateProdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProdEvent&&(identical(other.prod, prod) || other.prod == prod));
}


@override
int get hashCode => Object.hash(runtimeType,prod);

@override
String toString() {
  return 'ProdEvent.createProd(prod: $prod)';
}


}

/// @nodoc
abstract mixin class _$CreateProdEventCopyWith<$Res> implements $ProdEventCopyWith<$Res> {
  factory _$CreateProdEventCopyWith(_CreateProdEvent value, $Res Function(_CreateProdEvent) _then) = __$CreateProdEventCopyWithImpl;
@useResult
$Res call({
 ProdModel prod
});


$ProdModelCopyWith<$Res> get prod;

}
/// @nodoc
class __$CreateProdEventCopyWithImpl<$Res>
    implements _$CreateProdEventCopyWith<$Res> {
  __$CreateProdEventCopyWithImpl(this._self, this._then);

  final _CreateProdEvent _self;
  final $Res Function(_CreateProdEvent) _then;

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prod = null,}) {
  return _then(_CreateProdEvent(
prod: null == prod ? _self.prod : prod // ignore: cast_nullable_to_non_nullable
as ProdModel,
  ));
}

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdModelCopyWith<$Res> get prod {
  
  return $ProdModelCopyWith<$Res>(_self.prod, (value) {
    return _then(_self.copyWith(prod: value));
  });
}
}

/// @nodoc


class _UpdateProdEvent implements ProdEvent {
  const _UpdateProdEvent({required this.id, required this.prod});
  

 final  String id;
 final  ProdModel prod;

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProdEventCopyWith<_UpdateProdEvent> get copyWith => __$UpdateProdEventCopyWithImpl<_UpdateProdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProdEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.prod, prod) || other.prod == prod));
}


@override
int get hashCode => Object.hash(runtimeType,id,prod);

@override
String toString() {
  return 'ProdEvent.updateProd(id: $id, prod: $prod)';
}


}

/// @nodoc
abstract mixin class _$UpdateProdEventCopyWith<$Res> implements $ProdEventCopyWith<$Res> {
  factory _$UpdateProdEventCopyWith(_UpdateProdEvent value, $Res Function(_UpdateProdEvent) _then) = __$UpdateProdEventCopyWithImpl;
@useResult
$Res call({
 String id, ProdModel prod
});


$ProdModelCopyWith<$Res> get prod;

}
/// @nodoc
class __$UpdateProdEventCopyWithImpl<$Res>
    implements _$UpdateProdEventCopyWith<$Res> {
  __$UpdateProdEventCopyWithImpl(this._self, this._then);

  final _UpdateProdEvent _self;
  final $Res Function(_UpdateProdEvent) _then;

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prod = null,}) {
  return _then(_UpdateProdEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prod: null == prod ? _self.prod : prod // ignore: cast_nullable_to_non_nullable
as ProdModel,
  ));
}

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdModelCopyWith<$Res> get prod {
  
  return $ProdModelCopyWith<$Res>(_self.prod, (value) {
    return _then(_self.copyWith(prod: value));
  });
}
}

/// @nodoc


class _DeleteProdEvent implements ProdEvent {
  const _DeleteProdEvent({required this.id});
  

 final  String id;

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteProdEventCopyWith<_DeleteProdEvent> get copyWith => __$DeleteProdEventCopyWithImpl<_DeleteProdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteProdEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProdEvent.deleteProd(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteProdEventCopyWith<$Res> implements $ProdEventCopyWith<$Res> {
  factory _$DeleteProdEventCopyWith(_DeleteProdEvent value, $Res Function(_DeleteProdEvent) _then) = __$DeleteProdEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteProdEventCopyWithImpl<$Res>
    implements _$DeleteProdEventCopyWith<$Res> {
  __$DeleteProdEventCopyWithImpl(this._self, this._then);

  final _DeleteProdEvent _self;
  final $Res Function(_DeleteProdEvent) _then;

/// Create a copy of ProdEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteProdEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProdState {

 ProdStatus get status; ProdOperation get prodOperation; List<ProdModel> get prodList; String get selectedImageURL;
/// Create a copy of ProdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProdStateCopyWith<ProdState> get copyWith => _$ProdStateCopyWithImpl<ProdState>(this as ProdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdState&&(identical(other.status, status) || other.status == status)&&(identical(other.prodOperation, prodOperation) || other.prodOperation == prodOperation)&&const DeepCollectionEquality().equals(other.prodList, prodList)&&(identical(other.selectedImageURL, selectedImageURL) || other.selectedImageURL == selectedImageURL));
}


@override
int get hashCode => Object.hash(runtimeType,status,prodOperation,const DeepCollectionEquality().hash(prodList),selectedImageURL);

@override
String toString() {
  return 'ProdState(status: $status, prodOperation: $prodOperation, prodList: $prodList, selectedImageURL: $selectedImageURL)';
}


}

/// @nodoc
abstract mixin class $ProdStateCopyWith<$Res>  {
  factory $ProdStateCopyWith(ProdState value, $Res Function(ProdState) _then) = _$ProdStateCopyWithImpl;
@useResult
$Res call({
 ProdStatus status, ProdOperation prodOperation, List<ProdModel> prodList, String selectedImageURL
});




}
/// @nodoc
class _$ProdStateCopyWithImpl<$Res>
    implements $ProdStateCopyWith<$Res> {
  _$ProdStateCopyWithImpl(this._self, this._then);

  final ProdState _self;
  final $Res Function(ProdState) _then;

/// Create a copy of ProdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? prodOperation = null,Object? prodList = null,Object? selectedImageURL = null,}) {
  return _then(ProdState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProdStatus,prodOperation: null == prodOperation ? _self.prodOperation : prodOperation // ignore: cast_nullable_to_non_nullable
as ProdOperation,prodList: null == prodList ? _self.prodList : prodList // ignore: cast_nullable_to_non_nullable
as List<ProdModel>,selectedImageURL: null == selectedImageURL ? _self.selectedImageURL : selectedImageURL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProdState].
extension ProdStatePatterns on ProdState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProdState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProdState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProdState value)  $default,){
final _that = this;
switch (_that) {
case _ProdState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProdState value)?  $default,){
final _that = this;
switch (_that) {
case _ProdState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProdStatus status,  ProdOperation prodOperation,  List<ProdModel> prodList,  String selectedImageURL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProdState() when $default != null:
return $default(_that.status,_that.prodOperation,_that.prodList,_that.selectedImageURL);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProdStatus status,  ProdOperation prodOperation,  List<ProdModel> prodList,  String selectedImageURL)  $default,) {final _that = this;
switch (_that) {
case _ProdState():
return $default(_that.status,_that.prodOperation,_that.prodList,_that.selectedImageURL);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProdStatus status,  ProdOperation prodOperation,  List<ProdModel> prodList,  String selectedImageURL)?  $default,) {final _that = this;
switch (_that) {
case _ProdState() when $default != null:
return $default(_that.status,_that.prodOperation,_that.prodList,_that.selectedImageURL);case _:
  return null;

}
}

}

/// @nodoc


class _ProdState implements ProdState {
  const _ProdState({this.status = ProdStatus.init, this.prodOperation = ProdOperation.idle,  List<ProdModel> prodList = const [], this.selectedImageURL = ''}): _prodList = prodList;
  

@override@JsonKey() final  ProdStatus status;
@override@JsonKey() final  ProdOperation prodOperation;
 final  List<ProdModel> _prodList;
@override@JsonKey() List<ProdModel> get prodList {
  if (_prodList is EqualUnmodifiableListView) return _prodList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prodList);
}

@override@JsonKey() final  String selectedImageURL;

/// Create a copy of ProdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProdStateCopyWith<_ProdState> get copyWith => __$ProdStateCopyWithImpl<_ProdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProdState&&(identical(other.status, status) || other.status == status)&&(identical(other.prodOperation, prodOperation) || other.prodOperation == prodOperation)&&const DeepCollectionEquality().equals(other._prodList, _prodList)&&(identical(other.selectedImageURL, selectedImageURL) || other.selectedImageURL == selectedImageURL));
}


@override
int get hashCode => Object.hash(runtimeType,status,prodOperation,const DeepCollectionEquality().hash(_prodList),selectedImageURL);

@override
String toString() {
  return 'ProdState(status: $status, prodOperation: $prodOperation, prodList: $prodList, selectedImageURL: $selectedImageURL)';
}


}

/// @nodoc
abstract mixin class _$ProdStateCopyWith<$Res> implements $ProdStateCopyWith<$Res> {
  factory _$ProdStateCopyWith(_ProdState value, $Res Function(_ProdState) _then) = __$ProdStateCopyWithImpl;
@override @useResult
$Res call({
 ProdStatus status, ProdOperation prodOperation, List<ProdModel> prodList, String selectedImageURL
});




}
/// @nodoc
class __$ProdStateCopyWithImpl<$Res>
    implements _$ProdStateCopyWith<$Res> {
  __$ProdStateCopyWithImpl(this._self, this._then);

  final _ProdState _self;
  final $Res Function(_ProdState) _then;

/// Create a copy of ProdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? prodOperation = null,Object? prodList = null,Object? selectedImageURL = null,}) {
  return _then(_ProdState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProdStatus,prodOperation: null == prodOperation ? _self.prodOperation : prodOperation // ignore: cast_nullable_to_non_nullable
as ProdOperation,prodList: null == prodList ? _self._prodList : prodList // ignore: cast_nullable_to_non_nullable
as List<ProdModel>,selectedImageURL: null == selectedImageURL ? _self.selectedImageURL : selectedImageURL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
