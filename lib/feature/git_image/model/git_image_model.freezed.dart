// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GitImageModel {

 String get name; String get path; String get sha; int get size; String get url;@JsonKey(name: 'html_url') String get htmlUrl;@JsonKey(name: 'git_url') String get gitUrl;@JsonKey(name: 'download_url') String get downloadUrl; String get type;
/// Create a copy of GitImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitImageModelCopyWith<GitImageModel> get copyWith => _$GitImageModelCopyWithImpl<GitImageModel>(this as GitImageModel, _$identity);

  /// Serializes this GitImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitImageModel&&(identical(other.name, name) || other.name == name)&&(identical(other.path, path) || other.path == path)&&(identical(other.sha, sha) || other.sha == sha)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,path,sha,size,url,htmlUrl,gitUrl,downloadUrl,type);

@override
String toString() {
  return 'GitImageModel(name: $name, path: $path, sha: $sha, size: $size, url: $url, htmlUrl: $htmlUrl, gitUrl: $gitUrl, downloadUrl: $downloadUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class $GitImageModelCopyWith<$Res>  {
  factory $GitImageModelCopyWith(GitImageModel value, $Res Function(GitImageModel) _then) = _$GitImageModelCopyWithImpl;
@useResult
$Res call({
 String name, String path, String sha, int size, String url,@JsonKey(name: 'html_url') String htmlUrl,@JsonKey(name: 'git_url') String gitUrl,@JsonKey(name: 'download_url') String downloadUrl, String type
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? path = null,Object? sha = null,Object? size = null,Object? url = null,Object? htmlUrl = null,Object? gitUrl = null,Object? downloadUrl = null,Object? type = null,}) {
  return _then(GitImageModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,sha: null == sha ? _self.sha : sha // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,gitUrl: null == gitUrl ? _self.gitUrl : gitUrl // ignore: cast_nullable_to_non_nullable
as String,downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String path,  String sha,  int size,  String url, @JsonKey(name: 'html_url')  String htmlUrl, @JsonKey(name: 'git_url')  String gitUrl, @JsonKey(name: 'download_url')  String downloadUrl,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitImageModel() when $default != null:
return $default(_that.name,_that.path,_that.sha,_that.size,_that.url,_that.htmlUrl,_that.gitUrl,_that.downloadUrl,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String path,  String sha,  int size,  String url, @JsonKey(name: 'html_url')  String htmlUrl, @JsonKey(name: 'git_url')  String gitUrl, @JsonKey(name: 'download_url')  String downloadUrl,  String type)  $default,) {final _that = this;
switch (_that) {
case _GitImageModel():
return $default(_that.name,_that.path,_that.sha,_that.size,_that.url,_that.htmlUrl,_that.gitUrl,_that.downloadUrl,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String path,  String sha,  int size,  String url, @JsonKey(name: 'html_url')  String htmlUrl, @JsonKey(name: 'git_url')  String gitUrl, @JsonKey(name: 'download_url')  String downloadUrl,  String type)?  $default,) {final _that = this;
switch (_that) {
case _GitImageModel() when $default != null:
return $default(_that.name,_that.path,_that.sha,_that.size,_that.url,_that.htmlUrl,_that.gitUrl,_that.downloadUrl,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GitImageModel implements GitImageModel {
  const _GitImageModel({required this.name, required this.path, required this.sha, required this.size, required this.url, @JsonKey(name: 'html_url') required this.htmlUrl, @JsonKey(name: 'git_url') required this.gitUrl, @JsonKey(name: 'download_url') required this.downloadUrl, required this.type});
  factory _GitImageModel.fromJson(Map<String, dynamic> json) => _$GitImageModelFromJson(json);

@override final  String name;
@override final  String path;
@override final  String sha;
@override final  int size;
@override final  String url;
@override@JsonKey(name: 'html_url') final  String htmlUrl;
@override@JsonKey(name: 'git_url') final  String gitUrl;
@override@JsonKey(name: 'download_url') final  String downloadUrl;
@override final  String type;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitImageModel&&(identical(other.name, name) || other.name == name)&&(identical(other.path, path) || other.path == path)&&(identical(other.sha, sha) || other.sha == sha)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,path,sha,size,url,htmlUrl,gitUrl,downloadUrl,type);

@override
String toString() {
  return 'GitImageModel(name: $name, path: $path, sha: $sha, size: $size, url: $url, htmlUrl: $htmlUrl, gitUrl: $gitUrl, downloadUrl: $downloadUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GitImageModelCopyWith<$Res> implements $GitImageModelCopyWith<$Res> {
  factory _$GitImageModelCopyWith(_GitImageModel value, $Res Function(_GitImageModel) _then) = __$GitImageModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String path, String sha, int size, String url,@JsonKey(name: 'html_url') String htmlUrl,@JsonKey(name: 'git_url') String gitUrl,@JsonKey(name: 'download_url') String downloadUrl, String type
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? path = null,Object? sha = null,Object? size = null,Object? url = null,Object? htmlUrl = null,Object? gitUrl = null,Object? downloadUrl = null,Object? type = null,}) {
  return _then(_GitImageModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,sha: null == sha ? _self.sha : sha // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,gitUrl: null == gitUrl ? _self.gitUrl : gitUrl // ignore: cast_nullable_to_non_nullable
as String,downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
