// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitAuthEvent value)?  init,TResult Function( _ListenAuthStateChangedAuthEvent value)?  listenAuthStateChangedEvent,TResult Function( _SignInWithEmailAndPasswordAuthEvent value)?  signInWithEmailAndPassword,TResult Function( _SignOutAuthEvent value)?  signOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitAuthEvent() when init != null:
return init(_that);case _ListenAuthStateChangedAuthEvent() when listenAuthStateChangedEvent != null:
return listenAuthStateChangedEvent(_that);case _SignInWithEmailAndPasswordAuthEvent() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword(_that);case _SignOutAuthEvent() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitAuthEvent value)  init,required TResult Function( _ListenAuthStateChangedAuthEvent value)  listenAuthStateChangedEvent,required TResult Function( _SignInWithEmailAndPasswordAuthEvent value)  signInWithEmailAndPassword,required TResult Function( _SignOutAuthEvent value)  signOut,}){
final _that = this;
switch (_that) {
case _InitAuthEvent():
return init(_that);case _ListenAuthStateChangedAuthEvent():
return listenAuthStateChangedEvent(_that);case _SignInWithEmailAndPasswordAuthEvent():
return signInWithEmailAndPassword(_that);case _SignOutAuthEvent():
return signOut(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitAuthEvent value)?  init,TResult? Function( _ListenAuthStateChangedAuthEvent value)?  listenAuthStateChangedEvent,TResult? Function( _SignInWithEmailAndPasswordAuthEvent value)?  signInWithEmailAndPassword,TResult? Function( _SignOutAuthEvent value)?  signOut,}){
final _that = this;
switch (_that) {
case _InitAuthEvent() when init != null:
return init(_that);case _ListenAuthStateChangedAuthEvent() when listenAuthStateChangedEvent != null:
return listenAuthStateChangedEvent(_that);case _SignInWithEmailAndPasswordAuthEvent() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword(_that);case _SignOutAuthEvent() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( User? user)?  listenAuthStateChangedEvent,TResult Function( String email,  String password)?  signInWithEmailAndPassword,TResult Function()?  signOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitAuthEvent() when init != null:
return init();case _ListenAuthStateChangedAuthEvent() when listenAuthStateChangedEvent != null:
return listenAuthStateChangedEvent(_that.user);case _SignInWithEmailAndPasswordAuthEvent() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword(_that.email,_that.password);case _SignOutAuthEvent() when signOut != null:
return signOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( User? user)  listenAuthStateChangedEvent,required TResult Function( String email,  String password)  signInWithEmailAndPassword,required TResult Function()  signOut,}) {final _that = this;
switch (_that) {
case _InitAuthEvent():
return init();case _ListenAuthStateChangedAuthEvent():
return listenAuthStateChangedEvent(_that.user);case _SignInWithEmailAndPasswordAuthEvent():
return signInWithEmailAndPassword(_that.email,_that.password);case _SignOutAuthEvent():
return signOut();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( User? user)?  listenAuthStateChangedEvent,TResult? Function( String email,  String password)?  signInWithEmailAndPassword,TResult? Function()?  signOut,}) {final _that = this;
switch (_that) {
case _InitAuthEvent() when init != null:
return init();case _ListenAuthStateChangedAuthEvent() when listenAuthStateChangedEvent != null:
return listenAuthStateChangedEvent(_that.user);case _SignInWithEmailAndPasswordAuthEvent() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword(_that.email,_that.password);case _SignOutAuthEvent() when signOut != null:
return signOut();case _:
  return null;

}
}

}

/// @nodoc


class _InitAuthEvent implements AuthEvent {
  const _InitAuthEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitAuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.init()';
}


}




/// @nodoc


class _ListenAuthStateChangedAuthEvent implements AuthEvent {
  const _ListenAuthStateChangedAuthEvent({this.user});
  

 final  User? user;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListenAuthStateChangedAuthEventCopyWith<_ListenAuthStateChangedAuthEvent> get copyWith => __$ListenAuthStateChangedAuthEventCopyWithImpl<_ListenAuthStateChangedAuthEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListenAuthStateChangedAuthEvent&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthEvent.listenAuthStateChangedEvent(user: $user)';
}


}

/// @nodoc
abstract mixin class _$ListenAuthStateChangedAuthEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ListenAuthStateChangedAuthEventCopyWith(_ListenAuthStateChangedAuthEvent value, $Res Function(_ListenAuthStateChangedAuthEvent) _then) = __$ListenAuthStateChangedAuthEventCopyWithImpl;
@useResult
$Res call({
 User? user
});




}
/// @nodoc
class __$ListenAuthStateChangedAuthEventCopyWithImpl<$Res>
    implements _$ListenAuthStateChangedAuthEventCopyWith<$Res> {
  __$ListenAuthStateChangedAuthEventCopyWithImpl(this._self, this._then);

  final _ListenAuthStateChangedAuthEvent _self;
  final $Res Function(_ListenAuthStateChangedAuthEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_ListenAuthStateChangedAuthEvent(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}


}

/// @nodoc


class _SignInWithEmailAndPasswordAuthEvent implements AuthEvent {
  const _SignInWithEmailAndPasswordAuthEvent({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInWithEmailAndPasswordAuthEventCopyWith<_SignInWithEmailAndPasswordAuthEvent> get copyWith => __$SignInWithEmailAndPasswordAuthEventCopyWithImpl<_SignInWithEmailAndPasswordAuthEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInWithEmailAndPasswordAuthEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signInWithEmailAndPassword(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInWithEmailAndPasswordAuthEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordAuthEventCopyWith(_SignInWithEmailAndPasswordAuthEvent value, $Res Function(_SignInWithEmailAndPasswordAuthEvent) _then) = __$SignInWithEmailAndPasswordAuthEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignInWithEmailAndPasswordAuthEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordAuthEventCopyWith<$Res> {
  __$SignInWithEmailAndPasswordAuthEventCopyWithImpl(this._self, this._then);

  final _SignInWithEmailAndPasswordAuthEvent _self;
  final $Res Function(_SignInWithEmailAndPasswordAuthEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignInWithEmailAndPasswordAuthEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SignOutAuthEvent implements AuthEvent {
  const _SignOutAuthEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOutAuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOut()';
}


}




/// @nodoc
mixin _$AuthState {

 AuthStatus get status; UserStatus get userStatus; User? get currentUser; AppMex? get appMex;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.userStatus, userStatus) || other.userStatus == userStatus)&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,userStatus,currentUser,appMex);

@override
String toString() {
  return 'AuthState(status: $status, userStatus: $userStatus, currentUser: $currentUser, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 AuthStatus status, UserStatus userStatus, User? currentUser, AppMex? appMex
});


$AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? userStatus = null,Object? currentUser = freezed,Object? appMex = freezed,}) {
  return _then(AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,userStatus: null == userStatus ? _self.userStatus : userStatus // ignore: cast_nullable_to_non_nullable
as UserStatus,currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as User?,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppMexCopyWith<$Res>? get appMex {
    if (_self.appMex == null) {
    return null;
  }

  return $AppMexCopyWith<$Res>(_self.appMex!, (value) {
    return _then(_self.copyWith(appMex: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthStatus status,  UserStatus userStatus,  User? currentUser,  AppMex? appMex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.userStatus,_that.currentUser,_that.appMex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthStatus status,  UserStatus userStatus,  User? currentUser,  AppMex? appMex)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.status,_that.userStatus,_that.currentUser,_that.appMex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthStatus status,  UserStatus userStatus,  User? currentUser,  AppMex? appMex)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.userStatus,_that.currentUser,_that.appMex);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.status = AuthStatus.init, this.userStatus = UserStatus.unauthenticated, this.currentUser = null, this.appMex = null});
  

@override@JsonKey() final  AuthStatus status;
@override@JsonKey() final  UserStatus userStatus;
@override@JsonKey() final  User? currentUser;
@override@JsonKey() final  AppMex? appMex;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.userStatus, userStatus) || other.userStatus == userStatus)&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,userStatus,currentUser,appMex);

@override
String toString() {
  return 'AuthState(status: $status, userStatus: $userStatus, currentUser: $currentUser, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 AuthStatus status, UserStatus userStatus, User? currentUser, AppMex? appMex
});


@override $AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? userStatus = null,Object? currentUser = freezed,Object? appMex = freezed,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,userStatus: null == userStatus ? _self.userStatus : userStatus // ignore: cast_nullable_to_non_nullable
as UserStatus,currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as User?,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppMexCopyWith<$Res>? get appMex {
    if (_self.appMex == null) {
    return null;
  }

  return $AppMexCopyWith<$Res>(_self.appMex!, (value) {
    return _then(_self.copyWith(appMex: value));
  });
}
}

// dart format on
