import 'package:equatable/equatable.dart';

class OrderItem extends Equatable {
  final String id;
  final String productId;
  final String productName;
  final double quantity;
  final double price;
  final double total;
  const OrderItem({
    required this.id,
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.price,
    required this.total,
  });

  @override
  List<Object?> get props => [id,productId,productName,quantity, price,total];
}
