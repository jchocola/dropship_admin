import 'package:equatable/equatable.dart';

class Catalog extends Equatable {
  final String id;
  final String title;
  final List<String>? slugs;
  final String? description;
  final bool? isActive;
  final String? imageUrl;
  const Catalog({
    required this.id,
    required this.title,
    this.slugs,
    this.description,
    this.isActive,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [
    id,title,slugs,description,isActive,imageUrl
  ];

  
}
