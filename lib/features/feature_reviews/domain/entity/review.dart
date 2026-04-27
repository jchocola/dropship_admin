import 'package:equatable/equatable.dart';

enum ReviewStatus { pending, approved, rejected }

class Review extends Equatable {
  final String id;
  final String productId;
  final String? userId;
  final String? customerName;
  final String? productName;
  final double? rating;
  final DateTime? date;
  final String? advantage;
  final String? disadvantage;
  final String? comment;
  final List<String>? images;
  final String? videoUrl;
  final ReviewStatus? status;
  final String? moderatorComment;
  final int? helpfulVotes;
  final int? unhelpfulVotes;
  final String? reply;
  final bool? isVerifiedPurchase;
  final bool? isCustomerReview;
  const Review({
    required this.id,
    required this.productId,
    this.userId,
    this.customerName,
    this.productName,
    this.rating,
    this.date,
    this.advantage,
    this.disadvantage,
    this.comment,
    this.images,
    this.videoUrl,
    this.status,
    this.moderatorComment,
    this.helpfulVotes,
    this.unhelpfulVotes,
    this.reply,
    this.isVerifiedPurchase,
    this.isCustomerReview,
  });

  @override
 
  List<Object?> get props => [
    id, productId, userId, customerName, productName, rating,
        date, advantage, disadvantage, comment, images, videoUrl,
        status, moderatorComment, helpfulVotes, unhelpfulVotes,
        reply, isVerifiedPurchase, isCustomerReview,
  ];
}
