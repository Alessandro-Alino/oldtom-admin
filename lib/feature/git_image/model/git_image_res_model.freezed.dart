// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_image_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GitImageResModel {

 String get sha; String get url; List<GitImageModel> get tree; bool get truncated;
/// Create a copy of GitImageResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitImageResModelCopyWith<GitImageResModel> get copyWith => _$GitImageResModelCopyWithImpl<GitImageResModel>(this as GitImageResModel, _$identity);

  /// Serializes this GitImageResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitImageResModel&&(identical(other.sha, sha) || other.sha == sha)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.tree, tree)&&(identical(other.truncated, truncated) || other.truncated == truncated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sha,url,const DeepCollectionEquality().hash(tree),truncated);

@override
String toString() {
  return 'GitImageResModel(sha: $sha, url: $url, tree: $tree, truncated: $truncated)';
}


}

/// @nodoc
abstract mixin class $GitImageResModelCopyWith<$Res>  {
  factory $GitImageResModelCopyWith(GitImageResModel value, $Res Function(GitImageResModel) _then) = _$GitImageResModelCopyWithImpl;
@useResult
$Res call({
 String sha, String url, List<GitImageModel> tree, bool truncated
});




}
/// @nodoc
class _$GitImageResModelCopyWithImpl<$Res>
    implements $GitImageResModelCopyWith<$Res> {
  _$GitImageResModelCopyWithImpl(this._self, this._then);

  final GitImageResModel _self;
  final $Res Function(GitImageResModel) _then;

/// Create a copy of GitImageResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sha = null,Object? url = null,Object? tree = null,Object? truncated = null,}) {
  return _then(_self.copyWith(
sha: null == sha ? _self.sha : sha // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,tree: null == tree ? _self.tree : tree // ignore: cast_nullable_to_non_nullable
as List<GitImageModel>,truncated: null == truncated ? _self.truncated : truncated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GitImageResModel].
extension GitImageResModelPatterns on GitImageResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GitImageResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GitImageResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GitImageResModel value)  $default,){
final _that = this;
switch (_that) {
case _GitImageResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GitImageResModel value)?  $default,){
final _that = this;
switch (_that) {
case _GitImageResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sha,  String url,  List<GitImageModel> tree,  bool truncated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitImageResModel() when $default != null:
return $default(_that.sha,_that.url,_that.tree,_that.truncated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sha,  String url,  List<GitImageModel> tree,  bool truncated)  $default,) {final _that = this;
switch (_that) {
case _GitImageResModel():
return $default(_that.sha,_that.url,_that.tree,_that.truncated);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sha,  String url,  List<GitImageModel> tree,  bool truncated)?  $default,) {final _that = this;
switch (_that) {
case _GitImageResModel() when $default != null:
return $default(_that.sha,_that.url,_that.tree,_that.truncated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GitImageResModel implements GitImageResModel {
  const _GitImageResModel({required this.sha, required this.url, required final  List<GitImageModel> tree, required this.truncated}): _tree = tree;
  factory _GitImageResModel.fromJson(Map<String, dynamic> json) => _$GitImageResModelFromJson(json);

@override final  String sha;
@override final  String url;
 final  List<GitImageModel> _tree;
@override List<GitImageModel> get tree {
  if (_tree is EqualUnmodifiableListView) return _tree;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tree);
}

@override final  bool truncated;

/// Create a copy of GitImageResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitImageResModelCopyWith<_GitImageResModel> get copyWith => __$GitImageResModelCopyWithImpl<_GitImageResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GitImageResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitImageResModel&&(identical(other.sha, sha) || other.sha == sha)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._tree, _tree)&&(identical(other.truncated, truncated) || other.truncated == truncated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sha,url,const DeepCollectionEquality().hash(_tree),truncated);

@override
String toString() {
  return 'GitImageResModel(sha: $sha, url: $url, tree: $tree, truncated: $truncated)';
}


}

/// @nodoc
abstract mixin class _$GitImageResModelCopyWith<$Res> implements $GitImageResModelCopyWith<$Res> {
  factory _$GitImageResModelCopyWith(_GitImageResModel value, $Res Function(_GitImageResModel) _then) = __$GitImageResModelCopyWithImpl;
@override @useResult
$Res call({
 String sha, String url, List<GitImageModel> tree, bool truncated
});




}
/// @nodoc
class __$GitImageResModelCopyWithImpl<$Res>
    implements _$GitImageResModelCopyWith<$Res> {
  __$GitImageResModelCopyWithImpl(this._self, this._then);

  final _GitImageResModel _self;
  final $Res Function(_GitImageResModel) _then;

/// Create a copy of GitImageResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sha = null,Object? url = null,Object? tree = null,Object? truncated = null,}) {
  return _then(_GitImageResModel(
sha: null == sha ? _self.sha : sha // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,tree: null == tree ? _self._tree : tree // ignore: cast_nullable_to_non_nullable
as List<GitImageModel>,truncated: null == truncated ? _self.truncated : truncated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$GitImageModel {

 String get path; String get mode; String get type; String get sha; int? get size; String get url;
/// Create a copy of GitImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitImageModelCopyWith<GitImageModel> get copyWith => _$GitImageModelCopyWithImpl<GitImageModel>(this as GitImageModel, _$identity);

  /// Serializes this GitImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitImageModel&&(identical(other.path, path) || other.path == path)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.type, type) || other.type == type)&&(identical(other.sha, sha) || other.sha == sha)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,mode,type,sha,size,url);

@override
String toString() {
  return 'GitImageModel(path: $path, mode: $mode, type: $type, sha: $sha, size: $size, url: $url)';
}


}

/// @nodoc
abstract mixin class $GitImageModelCopyWith<$Res>  {
  factory $GitImageModelCopyWith(GitImageModel value, $Res Function(GitImageModel) _then) = _$GitImageModelCopyWithImpl;
@useResult
$Res call({
 String path, String mode, String type, String sha, int? size, String url
});




}
/// @nodoc
class _$GitImageModelCopyWithImpl<$Res>
    implements $GitImageModelCopyWith<$Res> {
  _$GitImageModelCopyWithImpl(this._self, this._then);

  final GitImageModel _self;
  final $Res Function(GitImageModel) _then;

/// Create a copy of GitImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? mode = null,Object? type = null,Object? sha = null,Object? size = freezed,Object? url = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sha: null == sha ? _self.sha : sha // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GitImageModel].
extension GitImageModelPatterns on GitImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GitImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GitImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GitImageModel value)  $default,){
final _that = this;
switch (_that) {
case _GitImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GitImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _GitImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String mode,  String type,  String sha,  int? size,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitImageModel() when $default != null:
return $default(_that.path,_that.mode,_that.type,_that.sha,_that.size,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String mode,  String type,  String sha,  int? size,  String url)  $default,) {final _that = this;
switch (_that) {
case _GitImageModel():
return $default(_that.path,_that.mode,_that.type,_that.sha,_that.size,_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String mode,  String type,  String sha,  int? size,  String url)?  $default,) {final _that = this;
switch (_that) {
case _GitImageModel() when $default != null:
return $default(_that.path,_that.mode,_that.type,_that.sha,_that.size,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GitImageModel implements GitImageModel {
  const _GitImageModel({required this.path, required this.mode, required this.type, required this.sha, this.size, required this.url});
  factory _GitImageModel.fromJson(Map<String, dynamic> json) => _$GitImageModelFromJson(json);

@override final  String path;
@override final  String mode;
@override final  String type;
@override final  String sha;
@override final  int? size;
@override final  String url;

/// Create a copy of GitImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitImageModelCopyWith<_GitImageModel> get copyWith => __$GitImageModelCopyWithImpl<_GitImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GitImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitImageModel&&(identical(other.path, path) || other.path == path)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.type, type) || other.type == type)&&(identical(other.sha, sha) || other.sha == sha)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,mode,type,sha,size,url);

@override
String toString() {
  return 'GitImageModel(path: $path, mode: $mode, type: $type, sha: $sha, size: $size, url: $url)';
}


}

/// @nodoc
abstract mixin class _$GitImageModelCopyWith<$Res> implements $GitImageModelCopyWith<$Res> {
  factory _$GitImageModelCopyWith(_GitImageModel value, $Res Function(_GitImageModel) _then) = __$GitImageModelCopyWithImpl;
@override @useResult
$Res call({
 String path, String mode, String type, String sha, int? size, String url
});




}
/// @nodoc
class __$GitImageModelCopyWithImpl<$Res>
    implements _$GitImageModelCopyWith<$Res> {
  __$GitImageModelCopyWithImpl(this._self, this._then);

  final _GitImageModel _self;
  final $Res Function(_GitImageModel) _then;

/// Create a copy of GitImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? mode = null,Object? type = null,Object? sha = null,Object? size = freezed,Object? url = null,}) {
  return _then(_GitImageModel(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sha: null == sha ? _self.sha : sha // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
