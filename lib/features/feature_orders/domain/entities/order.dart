import 'package:equatable/equatable.dart';

enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
  refunded,
}

enum PaymentStatus { paid, pending, failed }

class Order extends Equatable {
  final String id;
  final String orderNumber;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final OrderStatus? status;

  final String customerId;
  final String customerName;
  final String customerEmail;
  final String customerPhone;
  final List<String> orderItemIDs;

  final double subTotal;
  final double discountAmount;
  final String? promocode;
  final double? shippingCost;
  final double totalPrice;
  final String? paymentMethod;
  final PaymentStatus? paymentStatus;
  final String? transactionId;
  final Map<String, String>? shippingInfo;

  final String? trackingNumber;

  final DateTime? deliveryDate;
  final String? customerNotes;
  final String? adminNotes;
  final String? shippingMethod;
  final DateTime? estimatedDelivery;
  final String? currency;
  final bool? isGift;
  const Order({
    required this.id,
    required this.orderNumber,
    required this.createdAt,
    this.updatedAt,
    this.status,
    required this.customerId,
    required this.customerName,
    required this.customerEmail,
    required this.customerPhone,
    required this.orderItemIDs,
    required this.subTotal,
    required this.discountAmount,
    this.promocode,
    this.shippingCost,
    required this.totalPrice,
    this.paymentMethod,
    this.paymentStatus,
    this.transactionId,
    this.shippingInfo,
    this.trackingNumber,
    this.deliveryDate,
    this.customerNotes,
    this.adminNotes,
    this.shippingMethod,
    this.estimatedDelivery,
    this.currency,
    this.isGift,
  });

  @override
  List<Object?> get props => [
    id,
    orderNumber,
    createdAt,
    updatedAt,
    status,
    customerId,
    customerName,
    customerEmail,
    customerPhone,
    orderItemIDs,
    subTotal,
    discountAmount,
    promocode,
    shippingCost,
    totalPrice,
    paymentMethod,
    paymentStatus,
    transactionId,
    shippingInfo,
    trackingNumber,
    deliveryDate,
    customerNotes,
    adminNotes,
    shippingMethod,
    estimatedDelivery,
    currency,
    isGift
  ];
}
