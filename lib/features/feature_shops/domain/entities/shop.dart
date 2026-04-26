import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

enum ShopStatus { active, maintenance, suspended }

class Shop extends Equatable {
  final String id;
  final String? ownerId;
  final String name;
  final String? subDomain;
  final String? logoUrl;
  final String? description;
  final String? supportEmail;
  final String? phone;
  final String? legalName;

  const Shop({
    required this.id,
    this.ownerId,
    required this.name,
    this.subDomain,
    this.logoUrl,
    this.description,
    this.supportEmail,
    this.phone,
    this.legalName,
  });
  
  @override
  List<Object?> get props => [
    id,ownerId,name,subDomain,logoUrl,description,supportEmail,phone,legalName
  ];

  Shop copyWith({
    String? id,
    ValueGetter<String?>? ownerId,
    String? name,
    ValueGetter<String?>? subDomain,
    ValueGetter<String?>? logoUrl,
    ValueGetter<String?>? description,
    ValueGetter<String?>? supportEmail,
    ValueGetter<String?>? phone,
    ValueGetter<String?>? legalName,
  }) {
    return Shop(
      id: id ?? this.id,
      ownerId: ownerId != null ? ownerId() : this.ownerId,
      name: name ?? this.name,
      subDomain: subDomain != null ? subDomain() : this.subDomain,
      logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
      description: description != null ? description() : this.description,
      supportEmail: supportEmail != null ? supportEmail() : this.supportEmail,
      phone: phone != null ? phone() : this.phone,
      legalName: legalName != null ? legalName() : this.legalName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ownerId': ownerId,
      'name': name,
      'subDomain': subDomain,
      'logoUrl': logoUrl,
      'description': description,
      'supportEmail': supportEmail,
      'phone': phone,
      'legalName': legalName,
    };
  }

  factory Shop.fromMap(Map<String, dynamic> map) {
    return Shop(
      id: map['id'] ?? '',
      ownerId: map['ownerId'],
      name: map['name'] ?? '',
      subDomain: map['subDomain'],
      logoUrl: map['logoUrl'],
      description: map['description'],
      supportEmail: map['supportEmail'],
      phone: map['phone'],
      legalName: map['legalName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Shop.fromJson(String source) => Shop.fromMap(json.decode(source));
}
