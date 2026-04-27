import 'package:equatable/equatable.dart';

enum ProductStatus { active, inactive, lowStock }

class Product extends Equatable {
  final String id;
  final String sku;
  final String title;
  final String name;
  final double price;
  final double oldPrice;
  final String currency;
  final ProductStatus status;
  final int stockQuantity;
  final double? rating;
  final List<String>? reviewsId;
  final String? categoryId;
  final String? mainImageUrl;
  final List<String>? images;
  final String? brand;
  final List<String>? videos;
  final String? description;
  final Map<String, String>? specifications;
  final bool? isFeatured;
  final bool? isNewArrival;
  final bool? isBestSeller;
  final List<String>? tags;
  final List<String>? providers;
  final Map<String, String>? variations;
  final List<String>? slugs;
  final List<String>? meta;
  const Product({
    required this.id,
    required this.sku,
    required this.title,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.currency,
    required this.status,
    required this.stockQuantity,
    this.rating,
    this.reviewsId,
    this.categoryId,
    this.mainImageUrl,
    this.images,
    this.brand,
    this.videos,
    this.description,
    this.specifications,
    this.isFeatured,
    this.isNewArrival,
    this.isBestSeller,
    this.tags,
    this.providers,
    this.variations,
    this.slugs,
    this.meta,
  });

  @override
  List<Object?> get props => [
    id, sku, title, name, price, oldPrice, currency, status,
        stockQuantity, rating, reviewsId, categoryId, mainImageUrl,
        images, brand, videos, description, specifications,
        isFeatured, isNewArrival, isBestSeller, tags, providers,
        variations, slugs, meta,
  ];
}
