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
String _$categoriesHash() => r'ff560358da8d9094d10e5720539632a4729a0b6a';

/// See also [categories].
@ProviderFor(categories)
final categoriesProvider = AutoDisposeFutureProvider<List<Category>>.internal(
  categories,
  name: r'categoriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$categoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CategoriesRef = AutoDisposeFutureProviderRef<List<Category>>;
String _$subCategoriesHash() => r'b66309f2d0f7b7abe936400012e1297763bb06ae';

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

/// See also [subCategories].
@ProviderFor(subCategories)
const subCategoriesProvider = SubCategoriesFamily();

/// See also [subCategories].
class SubCategoriesFamily extends Family<AsyncValue<List<SubCategory>>> {
  /// See also [subCategories].
  const SubCategoriesFamily();

  /// See also [subCategories].
  SubCategoriesProvider call(
    String categoryId,
  ) {
    return SubCategoriesProvider(
      categoryId,
    );
  }

  @override
  SubCategoriesProvider getProviderOverride(
    covariant SubCategoriesProvider provider,
  ) {
    return call(
      provider.categoryId,
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
  String? get name => r'subCategoriesProvider';
}

/// See also [subCategories].
class SubCategoriesProvider
    extends AutoDisposeFutureProvider<List<SubCategory>> {
  /// See also [subCategories].
  SubCategoriesProvider(
    String categoryId,
  ) : this._internal(
          (ref) => subCategories(
            ref as SubCategoriesRef,
            categoryId,
          ),
          from: subCategoriesProvider,
          name: r'subCategoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subCategoriesHash,
          dependencies: SubCategoriesFamily._dependencies,
          allTransitiveDependencies:
              SubCategoriesFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  SubCategoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final String categoryId;

  @override
  Override overrideWith(
    FutureOr<List<SubCategory>> Function(SubCategoriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubCategoriesProvider._internal(
        (ref) => create(ref as SubCategoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SubCategory>> createElement() {
    return _SubCategoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubCategoriesProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubCategoriesRef on AutoDisposeFutureProviderRef<List<SubCategory>> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _SubCategoriesProviderElement
    extends AutoDisposeFutureProviderElement<List<SubCategory>>
    with SubCategoriesRef {
  _SubCategoriesProviderElement(super.provider);

  @override
  String get categoryId => (origin as SubCategoriesProvider).categoryId;
}

String _$productsHash() => r'560c886ee8fb17fba868de530cb702d12e360101';

/// See also [products].
@ProviderFor(products)
const productsProvider = ProductsFamily();

/// See also [products].
class ProductsFamily extends Family<AsyncValue<List<Product>>> {
  /// See also [products].
  const ProductsFamily();

  /// See also [products].
  ProductsProvider call(
    String categoryId,
    String subCategoryId,
  ) {
    return ProductsProvider(
      categoryId,
      subCategoryId,
    );
  }

  @override
  ProductsProvider getProviderOverride(
    covariant ProductsProvider provider,
  ) {
    return call(
      provider.categoryId,
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
  String? get name => r'productsProvider';
}

/// See also [products].
class ProductsProvider extends AutoDisposeFutureProvider<List<Product>> {
  /// See also [products].
  ProductsProvider(
    String categoryId,
    String subCategoryId,
  ) : this._internal(
          (ref) => products(
            ref as ProductsRef,
            categoryId,
            subCategoryId,
          ),
          from: productsProvider,
          name: r'productsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsHash,
          dependencies: ProductsFamily._dependencies,
          allTransitiveDependencies: ProductsFamily._allTransitiveDependencies,
          categoryId: categoryId,
          subCategoryId: subCategoryId,
        );

  ProductsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
    required this.subCategoryId,
  }) : super.internal();

  final String categoryId;
  final String subCategoryId;

  @override
  Override overrideWith(
    FutureOr<List<Product>> Function(ProductsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductsProvider._internal(
        (ref) => create(ref as ProductsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
        subCategoryId: subCategoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Product>> createElement() {
    return _ProductsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsProvider &&
        other.categoryId == categoryId &&
        other.subCategoryId == subCategoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, subCategoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductsRef on AutoDisposeFutureProviderRef<List<Product>> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;

  /// The parameter `subCategoryId` of this provider.
  String get subCategoryId;
}

class _ProductsProviderElement
    extends AutoDisposeFutureProviderElement<List<Product>> with ProductsRef {
  _ProductsProviderElement(super.provider);

  @override
  String get categoryId => (origin as ProductsProvider).categoryId;
  @override
  String get subCategoryId => (origin as ProductsProvider).subCategoryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
