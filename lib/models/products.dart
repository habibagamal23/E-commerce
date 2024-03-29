class Products {
  final String id;
  final String title;
  final int price;
  final String imgUrl;
  final int? discountValue;
  final String category;
  final int? rate;

  Products({
    required this.id,
    required this.title,
    required this.price,
    required this.imgUrl,
    this.discountValue,
    this.category = 'Other',
    this.rate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'imgUrl': imgUrl,
      'discountValue': discountValue,
      'category': category,
      'rate': rate,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map, String documentId) {
    return Products(
      id: documentId,
      title: map['title'] as String,
      price: map['price'] as int,
      imgUrl: map['imgUrl'] as String,
      discountValue: map['discountValue'] as int,
      category: map['category'] as String,
      rate: map['rate'] as int,
    );
  }
}

List<Products> dummyProducts = [
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl: 'https://m.media-amazon.com/images/I/61-jBuhtgZL._UX569_.jpg',
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '2',
    title: 'T-shirt',
    price: 500,
    imgUrl: 'https://m.media-amazon.com/images/I/61-jBuhtgZL._UX569_.jpg',
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '3',
    title: 'T-shirt',
    price: 600,
    imgUrl: 'https://m.media-amazon.com/images/I/61-jBuhtgZL._UX569_.jpg',
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl: 'https://m.media-amazon.com/images/I/61-jBuhtgZL._UX569_.jpg',
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl: 'https://m.media-amazon.com/images/I/61-jBuhtgZL._UX569_.jpg',
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl: 'https://m.media-amazon.com/images/I/61-jBuhtgZL._UX569_.jpg',
    category: 'Clothes',
    discountValue: 20,
  ),
];
