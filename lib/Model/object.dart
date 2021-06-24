class Object {
  String image, name, color, price;
  bool favorite;

  Object(this.image, this.name, this.color, this.price, this.favorite);
}

List womenList = [
  new Object('assets/shirt_1.jpg', 'بلوزة فاخرة', 'احمر', '18.64', false),
  new Object('assets/shirt_2.jpg', 'بلوزة فاخرة', 'بني', '18.50', false),
  new Object('assets/shirt_3.jpg', 'سويتشر فاخر', 'اسود', '35.80', false),
  new Object('assets/shirt_4.jpg', 'بلوزة فاخرة', 'اسود', '18.64', false),
];

List menList = [
  new Object('assets/jeans_1.jpg', 'جينز تركي', 'ازرق', '50.44', false),
  new Object('assets/jeans_2.jpg', 'جينز تركي', 'اسود', '50.50', false),
  new Object('assets/jeans_3.jpg', 'جينز تركي', 'كحلي', '50.55', false),
  new Object(
      'assets/jeans_4.jpg', 'جينز تركي', 'فضي مائل للصفرة', '50.60', false),
];

List teenList = [
  new Object('assets/suit_1.jpg', 'بدلة تركية فاخرة', 'فضي', '168.65', false),
  new Object('assets/suit_2.jpg', 'بدلة تركية فاخرة', 'اسود', '161.54', false),
  new Object('assets/suit_3.jpg', 'بدلة تركية فاخرة', 'بني', '122.60', false),
  new Object('assets/suit_4.jpg', 'بدلة تركية فاخرة', 'توتي', '124.04', false),
];
