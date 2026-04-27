import 'package:dropship_admin/features/feature_reviews/domain/entity/review.dart';

final List<Review> mockReviews = List.generate(100, (index) {
  final idNum = index + 1;
  final rating = (index % 5 == 0) ? 1.0 + (index % 3) : 4.0 + (index % 2); // Смесь плохих и хороших
  final status = index % 15 == 0 
      ? ReviewStatus.pending 
      : (index % 20 == 0 ? ReviewStatus.rejected : ReviewStatus.approved);

  return Review(
    id: 'rev_${idNum.toString().padLeft(3, '0')}',
    productId: 'p_${(index % 30 + 1).toString().padLeft(3, '0')}',
    userId: 'cust_${(index % 50 + 1).toString().padLeft(3, '0')}',
    customerName: _names[index % _names.length],
    productName: _products[index % _products.length],
    rating: rating,
    date: DateTime(2026, 3, (index % 31) + 1, 10, 0),
    advantage: rating > 3 ? 'Отличное качество, быстрая доставка.' : 'Приятный цвет.',
    disadvantage: rating < 4 ? 'Долго ехало, коробка помята.' : 'Не обнаружил.',
    comment: _comments[index % _comments.length],
    images: index % 4 == 0 ? ['https://api.dicebear.com/7.x/identicon/svg?seed=rev$index'] : null,
    status: status,
    isVerifiedPurchase: index % 2 == 0,
    isCustomerReview: true,
    helpfulVotes: (index * 3) % 20,
    unhelpfulVotes: (index) % 5,
    reply: index % 10 == 0 ? 'Спасибо за ваш отзыв! Мы рады, что вам понравилось.' : null,
    moderatorComment: status == ReviewStatus.rejected ? 'Содержит нецензурную лексику или спам' : null,
  );
});

// Списки для генерации текстов
const _names = ['Александр И.', 'Мария С.', 'Дмитрий В.', 'Елена К.', 'Иван П.', 'Анна Б.', 'Сергей М.', 'Ольга С.'];
const _products = ['iPhone 15', 'MacBook Air M2', 'Sony Headphones', 'Nike Jordan', 'Dyson V15', 'LEGO Falcon'];
const _comments = [
  'Все супер, пользуюсь уже неделю, нареканий нет.',
  'За свои деньги — отличный вариант. Рекомендую к покупке.',
  'Немного разочарован упаковкой, но сам товар в порядке.',
  'Шикарный дизайн и функционал. Дети в восторге!',
  'Доставка задержалась на 2 дня, но курьер был вежлив.',
  'Качество материалов на высоте, стоит каждой копейки.',
  'Ожидал большего, если честно. Обычный средний продукт.',
  'Покупаю уже второй раз в этом магазине, все стабильно хорошо.'
];