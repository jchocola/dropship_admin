import 'package:equatable/equatable.dart';

enum DiscountType { percentage, fixedAmount, freeShipping }

class Discount extends Equatable {
  final String id;
  final String name;
  final String? publicName;
  final DiscountType? discountType;
  final double? value;
  final int? minOrderAmount;
  final int? usageLimit;
  final int? userLimit;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool? isActive;
  final String? promocode;
  final bool? isCoupon;
  final String? description;
  const Discount({
    required this.id,
    required this.name,
    this.publicName,
    this.discountType,
    this.value,
    this.minOrderAmount,
    this.usageLimit,
    this.userLimit,
    this.startDate,
    this.endDate,
    this.isActive,
    this.promocode,
    this.isCoupon,
    this.description,
  });

  @override
  List<Object?> get props => [
   id, name, publicName, discountType, value, minOrderAmount,
        usageLimit, userLimit, startDate, endDate, isActive,
        promocode, isCoupon, description, 
  ];
}
