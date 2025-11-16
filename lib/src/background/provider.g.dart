// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$backgroundHash() => r'a02ee125b045c465332d38fb9f3c96f1956adf9a';

/// Registers the background service to check for emails regularly
///
/// Copied from [Background].
@ProviderFor(Background)
final backgroundProvider = AsyncNotifierProvider<Background, void>.internal(
  Background.new,
  name: r'backgroundProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$backgroundHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Background = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
