// ignore_for_file: invalid_use_of_internal_member

part of 'framework.dart';

// ignore: subtype_of_sealed_class
/// {@template bloc_subject_provider_family}
/// A class that allows building a [BlocSubjectProvider] from an external
/// parameter.
/// {@endtemplate}
///
/// {@template bloc_subject_provider_family_scoped}
/// # BlocSubjectProviderFamily.scoped
/// Creates a [BlocSubjectProvider] that will be scoped and must be overridden.
/// Otherwise, it will throw an [UnimplementedProviderError].
/// {@endtemplate}
@sealed
class BlocSubjectProviderFamily<E, S, Arg> extends FamilyBase<
    BlocSubjectProviderRef<E, S>,
    S,
    Arg,
    BlocSubject<E, S>,
    BlocSubjectProvider<E, S>> {
  /// The [Family] of [BlocSubjectProvider].
  BlocSubjectProviderFamily(
    super.create, {
    super.name,
    super.dependencies,
  }) : super(
          providerFactory: BlocSubjectProvider.internal,
          allTransitiveDependencies:
              computeAllTransitiveDependencies(dependencies),
          debugGetCreateSourceHash: null,
        );
}
