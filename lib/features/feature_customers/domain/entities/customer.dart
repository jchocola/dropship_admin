import 'package:equatable/equatable.dart';

enum AddressType { home, work }

class Customer extends Equatable {
  final String id;
  final String? firstName;
  final String? lastName;
  final DateTime? birthday;
  final bool isAnonymous;
  final bool acceptedTermsAt;
  final String? email;
  final String? phone;
  final int? totalOrders;
  final int? totalSpent;

  final DateTime? joinDate;
  final DateTime? lastOrderDate;
  final double? avarageOrderValue;

  final bool? isActive;
  final AddressType? addressType;
  final Map<String, String>? addressInfo;
  final String? receiveName;
  final String? adminNotes;
  const Customer({
    required this.id,
    this.firstName,
    this.lastName,
    this.birthday,
    required this.isAnonymous,
    required this.acceptedTermsAt,
    this.email,
    this.phone,
    this.totalOrders,
    this.totalSpent,
    this.joinDate,
    this.lastOrderDate,
    this.avarageOrderValue,
    this.isActive,
    this.addressType,
    this.addressInfo,
    this.receiveName,
    this.adminNotes,
  });

  @override

  List<Object?> get props => [
    id, firstName, lastName, birthday, isAnonymous, acceptedTermsAt,
        email, phone, totalOrders, totalSpent, joinDate, lastOrderDate,
        avarageOrderValue, isActive, addressType, addressInfo, receiveName, adminNotes
  ];
}
