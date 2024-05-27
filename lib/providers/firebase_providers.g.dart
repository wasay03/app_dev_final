// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebaseServiceHash() => r'70342238cf61992552fcea00d551eec41cdd16b4';

/// See also [firebaseService].
@ProviderFor(firebaseService)
final firebaseServiceProvider = AutoDisposeProvider<FirebaseService>.internal(
  firebaseService,
  name: r'firebaseServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseServiceRef = AutoDisposeProviderRef<FirebaseService>;
String _$allProductsHash() => r'a10ed2b87fb990542abb7f1e37d56ff74bd448bf';

/// See also [allProducts].
@ProviderFor(allProducts)
final allProductsProvider = AutoDisposeFutureProvider<List<Product>>.internal(
  allProducts,
  name: r'allProductsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllProductsRef = AutoDisposeFutureProviderRef<List<Product>>;
String _$productsBySubCategoryHash() =>
    r'34118905c3fea8b0f3edab86811715f096af677e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [productsBySubCategory].
@ProviderFor(productsBySubCategory)
const productsBySubCategoryProvider = ProductsBySubCategoryFamily();

/// See also [productsBySubCategory].
class ProductsBySubCategoryFamily extends Family<AsyncValue<List<Product>>> {
  /// See also [productsBySubCategory].
  const ProductsBySubCategoryFamily();

  /// See also [productsBySubCategory].
  ProductsBySubCategoryProvider call(
    String subCategoryId,
  ) {
    return ProductsBySubCategoryProvider(
      subCategoryId,
    );
  }

  @override
  ProductsBySubCategoryProvider getProviderOverride(
    covariant ProductsBySubCategoryProvider provider,
  ) {
    return call(
      provider.subCategoryId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productsBySubCategoryProvider';
}

/// See also [productsBySubCategory].
class ProductsBySubCategoryProvider
    extends AutoDisposeFutureProvider<List<Product>> {
  /// See also [productsBySubCategory].
  ProductsBySubCategoryProvider(
    String subCategoryId,
  ) : this._internal(
          (ref) => productsBySubCategory(
            ref as ProductsBySubCategoryRef,
            subCategoryId,
          ),
          from: productsBySubCategoryProvider,
          name: r'productsBySubCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsBySubCategoryHash,
          dependencies: ProductsBySubCategoryFamily._dependencies,
          allTransitiveDependencies:
              ProductsBySubCategoryFamily._allTransitiveDependencies,
          subCategoryId: subCategoryId,
        );

  ProductsBySubCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.subCategoryId,
  }) : super.internal();

  final String subCategoryId;

  @override
  Override overrideWith(
    FutureOr<List<Product>> Function(ProductsBySubCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductsBySubCategoryProvider._internal(
        (ref) => create(ref as ProductsBySubCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        subCategoryId: subCategoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Product>> createElement() {
    return _ProductsBySubCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsBySubCategoryProvider &&
        other.subCategoryId == subCategoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, subCategoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductsBySubCategoryRef on AutoDisposeFutureProviderRef<List<Product>> {
  /// The parameter `subCategoryId` of this provider.
  String get subCategoryId;
}

class _ProductsBySubCategoryProviderElement
    extends AutoDisposeFutureProviderElement<List<Product>>
    with ProductsBySubCategoryRef {
  _ProductsBySubCategoryProviderElement(super.provider);

  @override
  String get subCategoryId =>
      (origin as ProductsBySubCategoryProvider).subCategoryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
