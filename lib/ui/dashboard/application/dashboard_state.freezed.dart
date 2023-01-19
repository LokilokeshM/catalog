// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  DashboardEnum get dashboardEnum => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DashboardEnum dashboardEnum) screen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DashboardEnum dashboardEnum)? screen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DashboardEnum dashboardEnum)? screen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Screen value) screen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Screen value)? screen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Screen value)? screen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({DashboardEnum dashboardEnum});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardEnum = null,
  }) {
    return _then(_value.copyWith(
      dashboardEnum: null == dashboardEnum
          ? _value.dashboardEnum
          : dashboardEnum // ignore: cast_nullable_to_non_nullable
              as DashboardEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_ScreenCopyWith(_$_Screen value, $Res Function(_$_Screen) then) =
      __$$_ScreenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DashboardEnum dashboardEnum});
}

/// @nodoc
class __$$_ScreenCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Screen>
    implements _$$_ScreenCopyWith<$Res> {
  __$$_ScreenCopyWithImpl(_$_Screen _value, $Res Function(_$_Screen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardEnum = null,
  }) {
    return _then(_$_Screen(
      dashboardEnum: null == dashboardEnum
          ? _value.dashboardEnum
          : dashboardEnum // ignore: cast_nullable_to_non_nullable
              as DashboardEnum,
    ));
  }
}

/// @nodoc

class _$_Screen implements _Screen {
  _$_Screen({required this.dashboardEnum});

  @override
  final DashboardEnum dashboardEnum;

  @override
  String toString() {
    return 'DashboardState.screen(dashboardEnum: $dashboardEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Screen &&
            (identical(other.dashboardEnum, dashboardEnum) ||
                other.dashboardEnum == dashboardEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dashboardEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenCopyWith<_$_Screen> get copyWith =>
      __$$_ScreenCopyWithImpl<_$_Screen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DashboardEnum dashboardEnum) screen,
  }) {
    return screen(dashboardEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DashboardEnum dashboardEnum)? screen,
  }) {
    return screen?.call(dashboardEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DashboardEnum dashboardEnum)? screen,
    required TResult orElse(),
  }) {
    if (screen != null) {
      return screen(dashboardEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Screen value) screen,
  }) {
    return screen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Screen value)? screen,
  }) {
    return screen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Screen value)? screen,
    required TResult orElse(),
  }) {
    if (screen != null) {
      return screen(this);
    }
    return orElse();
  }
}

abstract class _Screen implements DashboardState {
  factory _Screen({required final DashboardEnum dashboardEnum}) = _$_Screen;

  @override
  DashboardEnum get dashboardEnum;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenCopyWith<_$_Screen> get copyWith =>
      throw _privateConstructorUsedError;
}
