// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GitImageEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitImageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageEvent()';
}


}

/// @nodoc
class $GitImageEventCopyWith<$Res>  {
$GitImageEventCopyWith(GitImageEvent _, $Res Function(GitImageEvent) __);
}


/// Adds pattern-matching-related methods to [GitImageEvent].
extension GitImageEventPatterns on GitImageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _ReadGitImagesEvent value)?  readGitImages,TResult Function( _PickImageEvent value)?  pickImage,TResult Function( _CreateGitImageEvent value)?  createGitImage,TResult Function( _UpdateGitImageEvent value)?  updateGitImage,TResult Function( _DeleteGitImageEvent value)?  deleteGitImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _ReadGitImagesEvent() when readGitImages != null:
return readGitImages(_that);case _PickImageEvent() when pickImage != null:
return pickImage(_that);case _CreateGitImageEvent() when createGitImage != null:
return createGitImage(_that);case _UpdateGitImageEvent() when updateGitImage != null:
return updateGitImage(_that);case _DeleteGitImageEvent() when deleteGitImage != null:
return deleteGitImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _ReadGitImagesEvent value)  readGitImages,required TResult Function( _PickImageEvent value)  pickImage,required TResult Function( _CreateGitImageEvent value)  createGitImage,required TResult Function( _UpdateGitImageEvent value)  updateGitImage,required TResult Function( _DeleteGitImageEvent value)  deleteGitImage,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _ReadGitImagesEvent():
return readGitImages(_that);case _PickImageEvent():
return pickImage(_that);case _CreateGitImageEvent():
return createGitImage(_that);case _UpdateGitImageEvent():
return updateGitImage(_that);case _DeleteGitImageEvent():
return deleteGitImage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _ReadGitImagesEvent value)?  readGitImages,TResult? Function( _PickImageEvent value)?  pickImage,TResult? Function( _CreateGitImageEvent value)?  createGitImage,TResult? Function( _UpdateGitImageEvent value)?  updateGitImage,TResult? Function( _DeleteGitImageEvent value)?  deleteGitImage,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _ReadGitImagesEvent() when readGitImages != null:
return readGitImages(_that);case _PickImageEvent() when pickImage != null:
return pickImage(_that);case _CreateGitImageEvent() when createGitImage != null:
return createGitImage(_that);case _UpdateGitImageEvent() when updateGitImage != null:
return updateGitImage(_that);case _DeleteGitImageEvent() when deleteGitImage != null:
return deleteGitImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  readGitImages,TResult Function( bool? reset)?  pickImage,TResult Function( String filename,  Uint8List bytes)?  createGitImage,TResult Function( String id,  String gitImage)?  updateGitImage,TResult Function( String id)?  deleteGitImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _ReadGitImagesEvent() when readGitImages != null:
return readGitImages();case _PickImageEvent() when pickImage != null:
return pickImage(_that.reset);case _CreateGitImageEvent() when createGitImage != null:
return createGitImage(_that.filename,_that.bytes);case _UpdateGitImageEvent() when updateGitImage != null:
return updateGitImage(_that.id,_that.gitImage);case _DeleteGitImageEvent() when deleteGitImage != null:
return deleteGitImage(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  readGitImages,required TResult Function( bool? reset)  pickImage,required TResult Function( String filename,  Uint8List bytes)  createGitImage,required TResult Function( String id,  String gitImage)  updateGitImage,required TResult Function( String id)  deleteGitImage,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _ReadGitImagesEvent():
return readGitImages();case _PickImageEvent():
return pickImage(_that.reset);case _CreateGitImageEvent():
return createGitImage(_that.filename,_that.bytes);case _UpdateGitImageEvent():
return updateGitImage(_that.id,_that.gitImage);case _DeleteGitImageEvent():
return deleteGitImage(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  readGitImages,TResult? Function( bool? reset)?  pickImage,TResult? Function( String filename,  Uint8List bytes)?  createGitImage,TResult? Function( String id,  String gitImage)?  updateGitImage,TResult? Function( String id)?  deleteGitImage,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _ReadGitImagesEvent() when readGitImages != null:
return readGitImages();case _PickImageEvent() when pickImage != null:
return pickImage(_that.reset);case _CreateGitImageEvent() when createGitImage != null:
return createGitImage(_that.filename,_that.bytes);case _UpdateGitImageEvent() when updateGitImage != null:
return updateGitImage(_that.id,_that.gitImage);case _DeleteGitImageEvent() when deleteGitImage != null:
return deleteGitImage(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent with DiagnosticableTreeMixin implements GitImageEvent {
  const _InitEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageEvent.init'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageEvent.init()';
}


}




/// @nodoc


class _ReadGitImagesEvent with DiagnosticableTreeMixin implements GitImageEvent {
  const _ReadGitImagesEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageEvent.readGitImages'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadGitImagesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageEvent.readGitImages()';
}


}




/// @nodoc


class _PickImageEvent with DiagnosticableTreeMixin implements GitImageEvent {
  const _PickImageEvent({this.reset});
  

 final  bool? reset;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickImageEventCopyWith<_PickImageEvent> get copyWith => __$PickImageEventCopyWithImpl<_PickImageEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageEvent.pickImage'))
    ..add(DiagnosticsProperty('reset', reset));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickImageEvent&&(identical(other.reset, reset) || other.reset == reset));
}


@override
int get hashCode => Object.hash(runtimeType,reset);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageEvent.pickImage(reset: $reset)';
}


}

/// @nodoc
abstract mixin class _$PickImageEventCopyWith<$Res> implements $GitImageEventCopyWith<$Res> {
  factory _$PickImageEventCopyWith(_PickImageEvent value, $Res Function(_PickImageEvent) _then) = __$PickImageEventCopyWithImpl;
@useResult
$Res call({
 bool? reset
});




}
/// @nodoc
class __$PickImageEventCopyWithImpl<$Res>
    implements _$PickImageEventCopyWith<$Res> {
  __$PickImageEventCopyWithImpl(this._self, this._then);

  final _PickImageEvent _self;
  final $Res Function(_PickImageEvent) _then;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reset = freezed,}) {
  return _then(_PickImageEvent(
reset: freezed == reset ? _self.reset : reset // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _CreateGitImageEvent with DiagnosticableTreeMixin implements GitImageEvent {
  const _CreateGitImageEvent({required this.filename, required this.bytes});
  

 final  String filename;
 final  Uint8List bytes;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGitImageEventCopyWith<_CreateGitImageEvent> get copyWith => __$CreateGitImageEventCopyWithImpl<_CreateGitImageEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageEvent.createGitImage'))
    ..add(DiagnosticsProperty('filename', filename))..add(DiagnosticsProperty('bytes', bytes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGitImageEvent&&(identical(other.filename, filename) || other.filename == filename)&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,filename,const DeepCollectionEquality().hash(bytes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageEvent.createGitImage(filename: $filename, bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class _$CreateGitImageEventCopyWith<$Res> implements $GitImageEventCopyWith<$Res> {
  factory _$CreateGitImageEventCopyWith(_CreateGitImageEvent value, $Res Function(_CreateGitImageEvent) _then) = __$CreateGitImageEventCopyWithImpl;
@useResult
$Res call({
 String filename, Uint8List bytes
});




}
/// @nodoc
class __$CreateGitImageEventCopyWithImpl<$Res>
    implements _$CreateGitImageEventCopyWith<$Res> {
  __$CreateGitImageEventCopyWithImpl(this._self, this._then);

  final _CreateGitImageEvent _self;
  final $Res Function(_CreateGitImageEvent) _then;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filename = null,Object? bytes = null,}) {
  return _then(_CreateGitImageEvent(
filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _UpdateGitImageEvent with DiagnosticableTreeMixin implements GitImageEvent {
  const _UpdateGitImageEvent({required this.id, required this.gitImage});
  

 final  String id;
 final  String gitImage;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGitImageEventCopyWith<_UpdateGitImageEvent> get copyWith => __$UpdateGitImageEventCopyWithImpl<_UpdateGitImageEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageEvent.updateGitImage'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('gitImage', gitImage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGitImageEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.gitImage, gitImage) || other.gitImage == gitImage));
}


@override
int get hashCode => Object.hash(runtimeType,id,gitImage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageEvent.updateGitImage(id: $id, gitImage: $gitImage)';
}


}

/// @nodoc
abstract mixin class _$UpdateGitImageEventCopyWith<$Res> implements $GitImageEventCopyWith<$Res> {
  factory _$UpdateGitImageEventCopyWith(_UpdateGitImageEvent value, $Res Function(_UpdateGitImageEvent) _then) = __$UpdateGitImageEventCopyWithImpl;
@useResult
$Res call({
 String id, String gitImage
});




}
/// @nodoc
class __$UpdateGitImageEventCopyWithImpl<$Res>
    implements _$UpdateGitImageEventCopyWith<$Res> {
  __$UpdateGitImageEventCopyWithImpl(this._self, this._then);

  final _UpdateGitImageEvent _self;
  final $Res Function(_UpdateGitImageEvent) _then;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? gitImage = null,}) {
  return _then(_UpdateGitImageEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,gitImage: null == gitImage ? _self.gitImage : gitImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteGitImageEvent with DiagnosticableTreeMixin implements GitImageEvent {
  const _DeleteGitImageEvent({required this.id});
  

 final  String id;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteGitImageEventCopyWith<_DeleteGitImageEvent> get copyWith => __$DeleteGitImageEventCopyWithImpl<_DeleteGitImageEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageEvent.deleteGitImage'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteGitImageEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageEvent.deleteGitImage(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteGitImageEventCopyWith<$Res> implements $GitImageEventCopyWith<$Res> {
  factory _$DeleteGitImageEventCopyWith(_DeleteGitImageEvent value, $Res Function(_DeleteGitImageEvent) _then) = __$DeleteGitImageEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteGitImageEventCopyWithImpl<$Res>
    implements _$DeleteGitImageEventCopyWith<$Res> {
  __$DeleteGitImageEventCopyWithImpl(this._self, this._then);

  final _DeleteGitImageEvent _self;
  final $Res Function(_DeleteGitImageEvent) _then;

/// Create a copy of GitImageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteGitImageEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GitImageState implements DiagnosticableTreeMixin {

 GitImageStatus get status; GitImageOperation get gitImageOperation; List<GitImageModel> get gitImageList; FilePickerResult? get filePicked;
/// Create a copy of GitImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitImageStateCopyWith<GitImageState> get copyWith => _$GitImageStateCopyWithImpl<GitImageState>(this as GitImageState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('gitImageOperation', gitImageOperation))..add(DiagnosticsProperty('gitImageList', gitImageList))..add(DiagnosticsProperty('filePicked', filePicked));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitImageState&&(identical(other.status, status) || other.status == status)&&(identical(other.gitImageOperation, gitImageOperation) || other.gitImageOperation == gitImageOperation)&&const DeepCollectionEquality().equals(other.gitImageList, gitImageList)&&(identical(other.filePicked, filePicked) || other.filePicked == filePicked));
}


@override
int get hashCode => Object.hash(runtimeType,status,gitImageOperation,const DeepCollectionEquality().hash(gitImageList),filePicked);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageState(status: $status, gitImageOperation: $gitImageOperation, gitImageList: $gitImageList, filePicked: $filePicked)';
}


}

/// @nodoc
abstract mixin class $GitImageStateCopyWith<$Res>  {
  factory $GitImageStateCopyWith(GitImageState value, $Res Function(GitImageState) _then) = _$GitImageStateCopyWithImpl;
@useResult
$Res call({
 GitImageStatus status, GitImageOperation gitImageOperation, List<GitImageModel> gitImageList, FilePickerResult? filePicked
});




}
/// @nodoc
class _$GitImageStateCopyWithImpl<$Res>
    implements $GitImageStateCopyWith<$Res> {
  _$GitImageStateCopyWithImpl(this._self, this._then);

  final GitImageState _self;
  final $Res Function(GitImageState) _then;

/// Create a copy of GitImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? gitImageOperation = null,Object? gitImageList = null,Object? filePicked = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GitImageStatus,gitImageOperation: null == gitImageOperation ? _self.gitImageOperation : gitImageOperation // ignore: cast_nullable_to_non_nullable
as GitImageOperation,gitImageList: null == gitImageList ? _self.gitImageList : gitImageList // ignore: cast_nullable_to_non_nullable
as List<GitImageModel>,filePicked: freezed == filePicked ? _self.filePicked : filePicked // ignore: cast_nullable_to_non_nullable
as FilePickerResult?,
  ));
}

}


/// Adds pattern-matching-related methods to [GitImageState].
extension GitImageStatePatterns on GitImageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GitImageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GitImageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GitImageState value)  $default,){
final _that = this;
switch (_that) {
case _GitImageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GitImageState value)?  $default,){
final _that = this;
switch (_that) {
case _GitImageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GitImageStatus status,  GitImageOperation gitImageOperation,  List<GitImageModel> gitImageList,  FilePickerResult? filePicked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitImageState() when $default != null:
return $default(_that.status,_that.gitImageOperation,_that.gitImageList,_that.filePicked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GitImageStatus status,  GitImageOperation gitImageOperation,  List<GitImageModel> gitImageList,  FilePickerResult? filePicked)  $default,) {final _that = this;
switch (_that) {
case _GitImageState():
return $default(_that.status,_that.gitImageOperation,_that.gitImageList,_that.filePicked);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GitImageStatus status,  GitImageOperation gitImageOperation,  List<GitImageModel> gitImageList,  FilePickerResult? filePicked)?  $default,) {final _that = this;
switch (_that) {
case _GitImageState() when $default != null:
return $default(_that.status,_that.gitImageOperation,_that.gitImageList,_that.filePicked);case _:
  return null;

}
}

}

/// @nodoc


class _GitImageState with DiagnosticableTreeMixin implements GitImageState {
  const _GitImageState({this.status = GitImageStatus.init, this.gitImageOperation = GitImageOperation.idle, final  List<GitImageModel> gitImageList = const [], this.filePicked = null}): _gitImageList = gitImageList;
  

@override@JsonKey() final  GitImageStatus status;
@override@JsonKey() final  GitImageOperation gitImageOperation;
 final  List<GitImageModel> _gitImageList;
@override@JsonKey() List<GitImageModel> get gitImageList {
  if (_gitImageList is EqualUnmodifiableListView) return _gitImageList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gitImageList);
}

@override@JsonKey() final  FilePickerResult? filePicked;

/// Create a copy of GitImageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitImageStateCopyWith<_GitImageState> get copyWith => __$GitImageStateCopyWithImpl<_GitImageState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GitImageState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('gitImageOperation', gitImageOperation))..add(DiagnosticsProperty('gitImageList', gitImageList))..add(DiagnosticsProperty('filePicked', filePicked));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitImageState&&(identical(other.status, status) || other.status == status)&&(identical(other.gitImageOperation, gitImageOperation) || other.gitImageOperation == gitImageOperation)&&const DeepCollectionEquality().equals(other._gitImageList, _gitImageList)&&(identical(other.filePicked, filePicked) || other.filePicked == filePicked));
}


@override
int get hashCode => Object.hash(runtimeType,status,gitImageOperation,const DeepCollectionEquality().hash(_gitImageList),filePicked);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GitImageState(status: $status, gitImageOperation: $gitImageOperation, gitImageList: $gitImageList, filePicked: $filePicked)';
}


}

/// @nodoc
abstract mixin class _$GitImageStateCopyWith<$Res> implements $GitImageStateCopyWith<$Res> {
  factory _$GitImageStateCopyWith(_GitImageState value, $Res Function(_GitImageState) _then) = __$GitImageStateCopyWithImpl;
@override @useResult
$Res call({
 GitImageStatus status, GitImageOperation gitImageOperation, List<GitImageModel> gitImageList, FilePickerResult? filePicked
});




}
/// @nodoc
class __$GitImageStateCopyWithImpl<$Res>
    implements _$GitImageStateCopyWith<$Res> {
  __$GitImageStateCopyWithImpl(this._self, this._then);

  final _GitImageState _self;
  final $Res Function(_GitImageState) _then;

/// Create a copy of GitImageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? gitImageOperation = null,Object? gitImageList = null,Object? filePicked = freezed,}) {
  return _then(_GitImageState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GitImageStatus,gitImageOperation: null == gitImageOperation ? _self.gitImageOperation : gitImageOperation // ignore: cast_nullable_to_non_nullable
as GitImageOperation,gitImageList: null == gitImageList ? _self._gitImageList : gitImageList // ignore: cast_nullable_to_non_nullable
as List<GitImageModel>,filePicked: freezed == filePicked ? _self.filePicked : filePicked // ignore: cast_nullable_to_non_nullable
as FilePickerResult?,
  ));
}


}

// dart format on
