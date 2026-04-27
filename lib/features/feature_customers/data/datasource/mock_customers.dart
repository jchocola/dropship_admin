import 'package:dropship_admin/features/feature_customers/domain/entities/customer.dart';

final List<Customer> mockCustomers = List.generate(50, (index) {
  final idNum = index + 1;
  final isAnon = idNum > 45; // Последние 5 будут анонимами
  
  return Customer(
    id: 'cust_${idNum.toString().padLeft(3, '0')}',
    firstName: isAnon ? null : _firstNames[index % _firstNames.length],
    lastName: isAnon ? null : _lastNames[index % _lastNames.length],
    birthday: isAnon ? null : DateTime(1980 + (index % 25), (index % 12) + 1, (index % 28) + 1),
    isAnonymous: isAnon,
    acceptedTermsAt: !isAnon,
    email: isAnon ? null : 'user$idNum@example.com',
    phone: isAnon ? null : '+7900${(1000000 + index * 1234).toString().substring(0, 7)}',
    totalOrders: isAnon ? 0 : (index * 2) % 15,
    totalSpent: isAnon ? 0 : (index * 1500) % 50000,
    joinDate: DateTime(2025, 1, idNum % 28),
    lastOrderDate: DateTime(2026, 4, (idNum % 27) + 1),
    avarageOrderValue: isAnon ? 0.0 : 1500.0 + (index * 100),
    isActive: true,
    addressType: index % 3 == 0 ? AddressType.work : AddressType.home,
    addressInfo: isAnon ? null : {
      'city': 'Город ${index % 5}',
      'street': 'Улица Центральная, д. $idNum',
    },
    receiveName: isAnon ? null : '${_firstNames[index % _firstNames.length]} ${_lastNames[index % _lastNames.length]}',
    adminNotes: index % 10 == 0 ? 'Проблемный клиент, часто возвраты' : null,
  );
});

// Вспомогательные данные для генерации
const _firstNames = ['Александр', 'Мария', 'Дмитрий', 'Елена', 'Иван', 'Анна', 'Сергей', 'Ольга', 'Михаил', 'Татьяна'];
const _lastNames = ['Иванов(а)', 'Смирнов(а)', 'Кузнецов(а)', 'Попов(а)', 'Васильев(а)', 'Петров(а)', 'Соколов(а)'];