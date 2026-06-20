// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prod_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProdModel {

@JsonKey(includeToJson: false) String? get id; String get name; String get description; String get image; double get price; List<String> get categID;@JsonKey(includeToJson: false) List<CategModel> get categories; List<String> get ingredients;
/// Create a copy of ProdModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProdModelCopyWith<ProdModel> get copyWith => _$ProdModelCopyWithImpl<ProdModel>(this as ProdModel, _$identity);

  /// Serializes this ProdModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.categID, categID)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.ingredients, ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,image,price,const DeepCollectionEquality().hash(categID),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(ingredients));

@override
String toString() {
  return 'ProdModel(id: $id, name: $name, description: $description, image: $image, price: $price, categID: $categID, categories: $categories, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $ProdModelCopyWith<$Res>  {
  factory $ProdModelCopyWith(ProdModel value, $Res Function(ProdModel) _then) = _$ProdModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String? id, String name, String description, String image, double price, List<String> categID,@JsonKey(includeToJson: false) List<CategModel> categories, List<String> ingredients
});




}
/// @nodoc
class _$ProdModelCopyWithImpl<$Res>
    implements $ProdModelCopyWith<$Res> {
  _$ProdModelCopyWithImpl(this._self, this._then);

  final ProdModel _self;
  final $Res Function(ProdModel) _then;

/// Create a copy of ProdModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? description = null,Object? image = null,Object? price = null,Object? categID = null,Object? categories = null,Object? ingredients = null,}) {
  return _then(ProdModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,categID: null == categID ? _self.categID : categID // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategModel>,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProdModel].
extension ProdModelPatterns on ProdModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProdModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProdModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProdModel value)  $default,){
final _that = this;
switch (_that) {
case _ProdModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProdModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProdModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id,  String name,  String description,  String image,  double price,  List<String> categID, @JsonKey(includeToJson: false)  List<CategModel> categories,  List<String> ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProdModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.image,_that.price,_that.categID,_that.categories,_that.ingredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id,  String name,  String description,  String image,  double price,  List<String> categID, @JsonKey(includeToJson: false)  List<CategModel> categories,  List<String> ingredients)  $default,) {final _that = this;
switch (_that) {
case _ProdModel():
return $default(_that.id,_that.name,_that.description,_that.image,_that.price,_that.categID,_that.categories,_that.ingredients);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false)  String? id,  String name,  String description,  String image,  double price,  List<String> categID, @JsonKey(includeToJson: false)  List<CategModel> categories,  List<String> ingredients)?  $default,) {final _that = this;
switch (_that) {
case _ProdModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.image,_that.price,_that.categID,_that.categories,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProdModel implements ProdModel {
  const _ProdModel({@JsonKey(includeToJson: false) this.id, required this.name, this.description = '', this.image = '', this.price = 0.0,  List<String> categID = const [], @JsonKey(includeToJson: false)  List<CategModel> categories = const [],  List<String> ingredients = const []}): _categID = categID,_categories = categories,_ingredients = ingredients;
  factory _ProdModel.fromJson(Map<String, dynamic> json) => _$ProdModelFromJson(json);

@override@JsonKey(includeToJson: false) final  String? id;
@override final  String name;
@override@JsonKey() final  String description;
@override@JsonKey() final  String image;
@override@JsonKey() final  double price;
 final  List<String> _categID;
@override@JsonKey() List<String> get categID {
  if (_categID is EqualUnmodifiableListView) return _categID;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categID);
}

 final  List<CategModel> _categories;
@override@JsonKey(includeToJson: false) List<CategModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<String> _ingredients;
@override@JsonKey() List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}


/// Create a copy of ProdModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProdModelCopyWith<_ProdModel> get copyWith => __$ProdModelCopyWithImpl<_ProdModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProdModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProdModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._categID, _categID)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,image,price,const DeepCollectionEquality().hash(_categID),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_ingredients));

@override
String toString() {
  return 'ProdModel(id: $id, name: $name, description: $description, image: $image, price: $price, categID: $categID, categories: $categories, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$ProdModelCopyWith<$Res> implements $ProdModelCopyWith<$Res> {
  factory _$ProdModelCopyWith(_ProdModel value, $Res Function(_ProdModel) _then) = __$ProdModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String? id, String name, String description, String image, double price, List<String> categID,@JsonKey(includeToJson: false) List<CategModel> categories, List<String> ingredients
});




}
/// @nodoc
class __$ProdModelCopyWithImpl<$Res>
    implements _$ProdModelCopyWith<$Res> {
  __$ProdModelCopyWithImpl(this._self, this._then);

  final _ProdModel _self;
  final $Res Function(_ProdModel) _then;

/// Create a copy of ProdModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? description = null,Object? image = null,Object? price = null,Object? categID = null,Object? categories = null,Object? ingredients = null,}) {
  return _then(_ProdModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,categID: null == categID ? _self._categID : categID // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategModel>,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
